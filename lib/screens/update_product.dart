import 'package:app_store/widgets/custom_button.dart';
import 'package:app_store/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  static String routeName = "update";
  String? productName, decoration, image;
  int? price;
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              CustomTextField(
                onChanged: (data) {
                  productName = data;
                },
                hintText: "Product Name",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  decoration = data;
                },
                hintText: "Description",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                inputType: TextInputType.number,
                onChanged: (data) {
                  price = int.parse(data);
                },
                hintText: "Price",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (data) {
                  image = data;
                },
                hintText: "image ",
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButon(text: 'Update')
            ],
          ),
        ),
      ),
    );
  }
}
