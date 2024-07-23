import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String routeName = "update";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar:  AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartArrowDown,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Edit Product',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),

    );
  }
}