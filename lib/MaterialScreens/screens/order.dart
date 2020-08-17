import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Order'),
      bottomSheet: Expanded(
        child: Container(
          height: 20.0,
          color: Colors.black26,
          child: Text('Total amount: Bs.10'),
        ),
      ),
    );
  }
}