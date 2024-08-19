import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Message Screen',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}