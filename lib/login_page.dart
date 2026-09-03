import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
const LoginPage({super.key});

@override
State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
bool hidePassword = true;
bool rememberMe = false;

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xfff5f7f9),

body: SafeArea(
child: Center(
child: SingleChildScrollView(
padding: const EdgeInsets.symmetric(
horizontal: 25,
vertical: 20,
),
child: Container(
constraints: const BoxConstraints(
maxWidth: 450,
),
padding: const EdgeInsets.all(28),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(25),
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.08),
blurRadius: 20,
offset: const Offset(0, 8),
),
],
),

child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

// =========================
// LOGO
// =========================

Center(
child: Container(
width: 80,
height: 80,
decoration: BoxDecoration(
color: const Color(0xff25d366),
borderRadius: BorderRadius.circular(22),
),
child: const Icon(
Icons.chat_rounded,
color: Colors.white,
size: 45,
),
),
),

const SizedBox(height: 25),

// =========================
// TITLE
// =========================

const Center(
child: Text(
"Welcome Back!",
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Color(0xff222222),
),
),
),

const SizedBox(height: 8),

const Center(
child: Text(
"Login to continue your account",
style: TextStyle(
fontSize: 14,
color: Colors.grey,
),
),
),

const SizedBox(height: 30),

// =========================
// EMAIL LABEL
// =========================

const Text(
"Email Address",
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.w600,
color: Color(0xff333333),
),
),

const SizedBox(height: 8),

// =========================
// EMAIL FIELD
// =========================

TextField(
keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(
hintText: "Enter your email",
prefixIcon: const Icon(
Icons.email_outlined,
color: Color(0xff25a865),
),
filled: true,
fillColor: const Color(0xfff7f8fa),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(14),
borderSide: BorderSide.none,
),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(14),
borderSide: const BorderSide(
color: Color(0xff25d366),
width: 2,
),
),
),
),

const SizedBox(height: 20),

// =========================
// PASSWORD LABEL
// =========================

const Text(
"Password",
style: TextStyle(
fontSize: 14,
fontWeight: FontWeight.w600,
color: Color(0xff333333),
),
),

const SizedBox(height: 8),

// =========================
// PASSWORD FIELD
// =========================

TextField(
obscureText: hidePassword,
decoration: InputDecoration(
hintText: "Enter your password",
prefixIcon: const Icon(
Icons.lock_outline,
color: Color(0xff25a865),
),
suffixIcon: IconButton(
onPressed: () {
setState(() {
hidePassword = !hidePassword;
});
},
icon: Icon(
hidePassword
? Icons.visibility_off_outlined
    : Icons.visibility_outlined,
),
),
filled: true,
fillColor: const Color(0xfff7f8fa),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(14),
borderSide: BorderSide.none,
),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(14),
borderSide: const BorderSide(
color: Color(0xff25d366),
width: 2,
),
),
),
),

const SizedBox(height: 12),

// =========================
// REMEMBER + FORGOT
// =========================

Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [

Row(
children: [
Checkbox(
value: rememberMe,
activeColor: const Color(0xff25d366),
onChanged: (value) {
setState(() {
rememberMe = value ?? false;
});
},
),

const Text(
"Remember me",
style: TextStyle(
fontSize: 13,
color: Colors.grey,
),
),
],
),

TextButton(
onPressed: () {},
child: const Text(
"Forgot Password?",
style: TextStyle(
color: Color(0xff128c7e),
fontWeight: FontWeight.w600,
),
),
),
],
),

const SizedBox(height: 15),

// =========================
// LOGIN BUTTON
// =========================

SizedBox(
width: double.infinity,
height: 55,
child: ElevatedButton(
onPressed: () {
// Login functionality yahan ayegi
},
style: ElevatedButton.styleFrom(
backgroundColor: const Color(0xff25d366),
foregroundColor: Colors.white,
elevation: 0,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(14),
),
),
child: const Text(
"LOGIN",
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
letterSpacing: 1,
),
),
),
),

const SizedBox(height: 25),

// =========================
// DIVIDER
// =========================

Row(
children: [
Expanded(
child: Divider(
color: Colors.grey.shade300,
),
),

const Padding(
padding: EdgeInsets.symmetric(horizontal: 12),
child: Text(
"OR",
style: TextStyle(
color: Colors.grey,
fontSize: 12,
),
),
),

Expanded(
child: Divider(
color: Colors.grey.shade300,
),
),
],
),

const SizedBox(height: 22),

// =========================
// SIGN UP
// =========================

Center(
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text(
"Don't have an account?",
style: TextStyle(
color: Colors.grey,
),
),

TextButton(
onPressed: () {},
child: const Text(
"Sign Up",
style: TextStyle(
color: Color(0xff128c7e),
fontWeight: FontWeight.bold,
),
),
),
],
),
),
],
),
),
),
),
),
);
}
}

