import 'package:app_store/widgets/custom_button.dart';
import 'package:app_store/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String routeName = "update";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Update Product',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              hintText: "Product Name",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: "Description",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: "Price",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: "image ",
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButon(text: 'Update')
          ],
        ),
      ),
    );
  }
}
