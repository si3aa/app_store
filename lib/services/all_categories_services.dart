import 'package:app_store/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories', token: '');

    return data;
  }
}
