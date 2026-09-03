import 'package:flutter/material.dart';
import 'package:app2/ChatListView.dart';
import 'package:app2/UpdatesScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff25D366),
        ),
      ),

      initialRoute: '/chats',

      routes: {
        '/chats': (context) => const ChatListView(),
        '/updates': (context) => const UpdatesScreen(),

      },
    );
  }
}