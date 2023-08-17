import 'package:flutter/material.dart';
import 'package:flutterapp/Products.dart';
import 'package:flutterapp/Card.dart';

class Bodyy extends StatefulWidget {
  const Bodyy({super.key});

  @override
  State<Bodyy> createState() => _BodyyState();
}

class _BodyyState extends State<Bodyy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Wrap(

                spacing: 10,
                runSpacing: 10,
                children: [
                  ...productsmob.map((product) => CardProduct(mob: product)).toList(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Handle onPressed action here
              },
              child: Icon(Icons.shopping_cart_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
