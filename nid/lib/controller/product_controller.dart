import 'package:get/state_manager.dart';
import 'package:nid/models/product_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ProductController extends GetxController {
  Rx<List<ProductModel>> products = Rx<List<ProductModel>>([]);

  RxBool isLoading = RxBool(false);

  Future getProductList() async {
    final url = 'http://10.0.2.2:8000/api/products';
    final Uri uri = Uri.parse(url);

    try {
      products.value.clear();
      isLoading.value = true;

      final http.Response response = await http.get(uri);
      // print(response.body);
      if (response.statusCode == 200) {
        isLoading.value = false;

        final content = convert.jsonDecode(response.body);
        final data = content['products'] as List;
        for (var item in data) {
          products.value.add(ProductModel.fromJson(item));
        }
      } else {
        isLoading.value = false;
        products.value = [];
      }
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
    }
  }
}
