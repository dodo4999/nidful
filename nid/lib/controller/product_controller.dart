import 'package:get/state_manager.dart';
import 'package:nid/models/product_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ProductController extends GetxController {
  void onReady() {
    super.onReady();
    getProductList();
  }

  Rx<List<ProductModel>> products = Rx<List<ProductModel>>([]);
  Future getProductList() async {
    final url = 'http://10.0.2.2:8000/api/products';
    final Uri uri = Uri.parse(url);

    try {
      final http.Response response = await http.get(uri);
      // print(response.body);
      if (response.statusCode == 200) {
        final content = convert.jsonDecode(response.body);
        final data = content['products'] as List;
        for (var item in data) {
          products.value.add(ProductModel.fromJson(item));
        }
      } else {
        products.value = [];
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
