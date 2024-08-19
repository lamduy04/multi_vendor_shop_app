import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Account Screen',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
        ),
      ),
    );

  }
}