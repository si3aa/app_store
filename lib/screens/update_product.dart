import 'package:app_store/models/product_model.dart';
import 'package:app_store/services/update_product.dart';
import 'package:app_store/widgets/custom_button.dart';
import 'package:app_store/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: must_be_immutable
class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});
  static String routeName = "update";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, decoration, image, price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                    price = data;
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
                  height: 70,
                ),
                CustomButon(
                  text: 'Update',
                  onTap: () {
                    isLoading = true;
                    setState(() {});
                    try {
                      updateProduct(product);
                      print('success');
                    } catch (e) {
                     print(e.toString());
                    }
                     isLoading = false;
                      setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductServices().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        desc: decoration == null ? product.description : decoration!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
