import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            http.Response response = await http
                .post(Uri.parse('https://fakestoreapi.com/products'), body: {
              'title': 'Test Product',
              'price': '9.99',
              'description': 'This is a test product.',
              'category': 'Electronics',
              'image': 'https://via.placeholder.com/150',
            }, headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/x-www-form-urlencoded',
              'Authorization': 'Bearer'
            });
            print(response.body);
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Store App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
        body: const SizedBox(),
      ),
    );
  }
}
