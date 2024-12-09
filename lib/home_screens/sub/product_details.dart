import 'package:flutter/material.dart';
class ProductDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Product Details"),
      ),
    );
  }
}