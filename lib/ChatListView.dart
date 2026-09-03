import 'package:flutter/material.dart';

class ChatListView extends StatefulWidget {
const ChatListView({super.key});

@override
State<ChatListView> createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
bool isSearching = false;
final TextEditingController searchController = TextEditingController();

final List<Map<String, dynamic>> chats = [
{
"name": "Ali Ahmed",
"message": "Hello! How are you?",
"time": "10:30 AM",
"count": 3,
"icon": Icons.person,
"online": true,
"read": false,
},
{
"name": "Usman Khan",
"message": "Kal class hai?",
"time": "09:45 AM",
"count": 5,
"icon": Icons.person,
"online": true,
"read": false,
},
{
"name": "Ahmed Raza",
"message": "Okay bro 👍",
"time": "Yesterday",
"count": 1,
"icon": Icons.person,
"online": false,
"read": true,
},
{
"name": "Flutter Developers",
"message": "Usaid: Assignment complete ho gaya",
"time": "Yesterday",
"count": 12,
"icon": Icons.groups,
"online": true,
"read": false,
},
{
"name": "Hamza",
"message": "See you tomorrow bro",
"time": "Yesterday",
"count": 2,
"icon": Icons.person,
"online": false,
"read": false,
},
{
"name": "Family Group",
"message": "Dinner kab hai?",
"time": "Monday",
"count": 8,
"icon": Icons.groups,
"online": false,
"read": false,
},
{
"name": "Bilal Ahmed",
"message": "Project ka kya bana?",
"time": "Monday",
"count": 4,
"icon": Icons.person,
"online": true,
"read": true,
},
{
"name": "University Friends",
"message": "Guys kal presentation hai",
"time": "Sunday",
"count": 15,
"icon": Icons.groups,
"online": true,
"read": false,
},
{
"name": "Saad",
"message": "Thanks bro ❤️",
"time": "Sunday",
"count": 0,
"icon": Icons.person,
"online": false,
"read": true,
},
{
"name": "Web Development Group",
"message": "New Laravel project start karna hai",
"time": "Saturday",
"count": 21,
"icon": Icons.groups,
"online": true,
"read": false,
},
{
"name": "Zain",
"message": "Call me when you are free",
"time": "Friday",
"count": 1,
"icon": Icons.person,
"online": false,
"read": false,
},
{
"name": "Office Team",
"message": "Meeting at 4 PM today",
"time": "Thursday",
"count": 9,
"icon": Icons.groups,
"online": true,
"read": false,
},
{
"name": "Hassan",
"message": "Nice work 👏",
"time": "Thursday",
"count": 0,
"icon": Icons.person,
"online": false,
"read": true,
},
{
"name": "Best Friends",
"message": "Weekend ka plan kya hai?",
"time": "Wednesday",
"count": 6,
"icon": Icons.groups,
"online": true,
"read": false,
},
{
"name": "Danish",
"message": "Okay, I'll send it.",
"time": "Wednesday",
"count": 3,
"icon": Icons.person,
"online": true,
"read": true,
},
];

List<Map<String, dynamic>> get filteredChats {
if (searchController.text.isEmpty) {
return chats;
}

return chats.where((chat) {
return chat["name"]
    .toString()
    .toLowerCase()
    .contains(searchController.text.toLowerCase());
}).toList();
}

@override
void dispose() {
searchController.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xfff7f7f7),

// ==========================================
// WHATSAPP APP BAR
// ==========================================

appBar: AppBar(
backgroundColor: const Color(0xff075e54),
foregroundColor: Colors.white,
elevation: 0,

title: isSearching
? TextField(
controller: searchController,
autofocus: true,
style: const TextStyle(
color: Colors.white,
fontSize: 18,
),
decoration: const InputDecoration(
hintText: "Search...",
hintStyle: TextStyle(
color: Colors.white70,
),
border: InputBorder.none,
),
onChanged: (value) {
setState(() {});
},
)
    : const Text(
"WhatsApp",
style: TextStyle(
fontSize: 21,
fontWeight: FontWeight.bold,
),
),

actions: [
IconButton(
icon: Icon(
isSearching ? Icons.close : Icons.search,
),
onPressed: () {
setState(() {
isSearching = !isSearching;

if (!isSearching) {
searchController.clear();
}
});
},
),

PopupMenuButton<String>(
icon: const Icon(Icons.more_vert),
onSelected: (value) {
if (value == "settings") {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text("Settings clicked"),
),
);
}

if (value == "new_group") {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text("New Group clicked"),
),
);
}
},
itemBuilder: (context) {
return const [
PopupMenuItem(
value: "new_group",
child: Text("New Group"),
),
PopupMenuItem(
value: "settings",
child: Text("Settings"),
),
];
},
),
],
),

// ==========================================
// CHAT LIST
// ==========================================

body: ListView.builder(
itemCount: filteredChats.length,
itemBuilder: (context, index) {
final chat = filteredChats[index];

return Column(
children: [
ListTile(
contentPadding: const EdgeInsets.symmetric(
horizontal: 15,
vertical: 7,
),

// ==================================
// PROFILE ICON
// ==================================

leading: Stack(
children: [
CircleAvatar(
radius: 29,

backgroundColor:
chat["icon"] == Icons.groups
? const Color(0xffd8f3dc)
    : const Color(0xffdbeafe),

child: Icon(
chat["icon"],
size: 30,
color:
chat["icon"] == Icons.groups
? const Color(0xff128c7e)
    : const Color(0xff3578b5),
),
),

// ONLINE DOT
if (chat["online"] == true)
Positioned(
right: 0,
bottom: 0,
child: Container(
width: 16,
height: 16,
decoration: BoxDecoration(
color: const Color(0xff25d366),
shape: BoxShape.circle,
border: Border.all(
color: Colors.white,
width: 2,
),
),
),
),
],
),

// ==================================
// CHAT NAME
// ==================================

title: Text(
chat["name"],
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.w600,
color: Color(0xff222222),
),
),

// ==================================
// LAST MESSAGE
// ==================================

subtitle: Padding(
padding: const EdgeInsets.only(top: 5),
child: Row(
children: [
if (chat["read"] == true)
const Padding(
padding: EdgeInsets.only(right: 4),
child: Icon(
Icons.done_all,
size: 17,
color: Color(0xff53bdeb),
),
),

Expanded(
child: Text(
chat["message"],
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: TextStyle(
fontSize: 14,
color: Colors.grey.shade600,
),
),
),
],
),
),

// ==================================
// TIME + UNREAD COUNT
// ==================================

trailing: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.end,
children: [
Text(
chat["time"],
style: TextStyle(
fontSize: 12,
color: chat["count"] > 0
? const Color(0xff128c7e)
    : Colors.grey,
fontWeight: chat["count"] > 0
? FontWeight.bold
    : FontWeight.normal,
),
),

const SizedBox(height: 7),

if (chat["count"] > 0)
Container(
width: 24,
height: 24,
decoration: const BoxDecoration(
color: Color(0xff25d366),
shape: BoxShape.circle,
),
child: Center(
child: Text(
chat["count"].toString(),
style: const TextStyle(
color: Colors.white,
fontSize: 11,
fontWeight: FontWeight.bold,
),
),
),
),
],
),

// ==================================
// NAVIGATOR.PUSH
// ==================================

onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => ChatScreen(
name: chat["name"],
icon: chat["icon"],
online: chat["online"],
),
),
);
},
),

// ==================================
// DIVIDER
// ==================================

Padding(
padding: const EdgeInsets.only(left: 85),
child: Divider(
height: 1,
thickness: 0.6,
color: Colors.grey.shade300,
),
),
],
);
},
),

// ==========================================
// FLOATING ACTION BUTTON
// ==========================================

floatingActionButton: FloatingActionButton(
backgroundColor: const Color(0xff25d366),
foregroundColor: Colors.white,
elevation: 5,

onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text("New chat button clicked"),
),
);
},

child: const Icon(
Icons.chat,
size: 26,
),
),
);
}
}


// ==================================================
// CHAT SCREEN
// ==================================================

class ChatScreen extends StatefulWidget {
final String name;
final IconData icon;
final bool online;

const ChatScreen({
super.key,
required this.name,
required this.icon,
required this.online,
});

@override
State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
final TextEditingController messageController =
TextEditingController();

final List<Map<String, dynamic>> messages = [
{
"message": "Hello 👋",
"isMe": false,
"time": "10:20 AM",
},
{
"message": "Hello! How are you?",
"isMe": true,
"time": "10:21 AM",
},
{
"message": "I am fine. What about you?",
"isMe": false,
"time": "10:22 AM",
},
{
"message": "I am also good 👍",
"isMe": true,
"time": "10:23 AM",
},
];

void sendMessage() {
if (messageController.text.trim().isEmpty) {
return;
}

setState(() {
messages.add({
"message": messageController.text.trim(),
"isMe": true,
"time": "Now",
});

messageController.clear();
});
}

@override
void dispose() {
messageController.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xffefeae2),

// ==========================================
// CHAT APP BAR
// ==========================================

appBar: AppBar(
backgroundColor: const Color(0xff075e54),
foregroundColor: Colors.white,

// ========================================
// NAVIGATOR.POP
// ========================================

leading: IconButton(
icon: const Icon(Icons.arrow_back),
onPressed: () {
Navigator.pop(context);
},
),

titleSpacing: 0,

title: Row(
children: [
CircleAvatar(
radius: 20,
backgroundColor: const Color(0xffd8f3dc),
child: Icon(
widget.icon,
color: const Color(0xff128c7e),
),
),

const SizedBox(width: 10),

Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
widget.name,
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
),
),

Text(
widget.online ? "online" : "last seen recently",
style: const TextStyle(
fontSize: 12,
color: Colors.white70,
),
),
],
),
],
),

actions: [
IconButton(
onPressed: () {},
icon: const Icon(Icons.videocam_outlined),
),

IconButton(
onPressed: () {},
icon: const Icon(Icons.call_outlined),
),

PopupMenuButton<String>(
itemBuilder: (context) {
return const [
PopupMenuItem(
value: "contact",
child: Text("Contact info"),
),
PopupMenuItem(
value: "search",
child: Text("Search"),
),
PopupMenuItem(
value: "mute",
child: Text("Mute notifications"),
),
];
},
),
],
),

// ==========================================
// MESSAGES
// ==========================================

body: Column(
children: [
Expanded(
child: ListView.builder(
padding: const EdgeInsets.symmetric(
horizontal: 12,
vertical: 15,
),
itemCount: messages.length,
itemBuilder: (context, index) {
final message = messages[index];

final bool isMe = message["isMe"];

return Align(
alignment: isMe
? Alignment.centerRight
    : Alignment.centerLeft,

child: Container(
margin: const EdgeInsets.only(
bottom: 8,
),

padding: const EdgeInsets.symmetric(
horizontal: 12,
vertical: 8,
),

constraints: BoxConstraints(
maxWidth:
MediaQuery.of(context).size.width * 0.75,
),

decoration: BoxDecoration(
color: isMe
? const Color(0xffd9fdd3)
    : Colors.white,

borderRadius: BorderRadius.only(
topLeft: const Radius.circular(12),
topRight: const Radius.circular(12),
bottomLeft: Radius.circular(
isMe ? 12 : 2,
),
bottomRight: Radius.circular(
isMe ? 2 : 12,
),
),
),

child: Row(
mainAxisSize: MainAxisSize.min,
crossAxisAlignment: CrossAxisAlignment.end,
children: [
Flexible(
child: Text(
message["message"],
style: const TextStyle(
fontSize: 15,
color: Color(0xff222222),
),
),
),

const SizedBox(width: 7),

Text(
message["time"],
style: TextStyle(
fontSize: 10,
color: Colors.grey.shade600,
),
),

if (isMe) ...[
const SizedBox(width: 3),

const Icon(
Icons.done_all,
size: 15,
color: Color(0xff53bdeb),
),
],
],
),
),
);
},
),
),

// ========================================
// MESSAGE INPUT
// ========================================

Container(
padding: const EdgeInsets.symmetric(
horizontal: 8,
vertical: 7,
),

color: const Color(0xfff0f0f0),

child: Row(
children: [
// EMOJI
IconButton(
onPressed: () {},
icon: const Icon(
Icons.emoji_emotions_outlined,
color: Colors.grey,
),
),

// TEXT FIELD
Expanded(
child: Container(
padding: const EdgeInsets.symmetric(
horizontal: 15,
),

decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(25),
),

child: TextField(
controller: messageController,
textInputAction: TextInputAction.send,

onSubmitted: (value) {
sendMessage();
},

decoration: const InputDecoration(
hintText: "Type a message",
border: InputBorder.none,
),
),
),
),

const SizedBox(width: 5),

// SEND BUTTON
CircleAvatar(
radius: 23,
backgroundColor: const Color(0xff25d366),

child: IconButton(
onPressed: sendMessage,
icon: const Icon(
Icons.send,
color: Colors.white,
size: 20,
),
),
),
],
),
),
],
),
);
}
}

