import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Cart Screen',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
        ),
      ),
    );

  }
}