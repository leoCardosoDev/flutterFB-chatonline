import 'package:chat0nlineapp/screens/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat Online",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        iconTheme: IconThemeData(
          color: Colors.purple,
        )
      ),
      home: ChatScreen(),
    );
  }
}
