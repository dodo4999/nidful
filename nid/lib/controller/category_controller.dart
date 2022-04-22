import 'package:get/state_manager.dart';
import 'package:nid/models/category_controller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CategoryController extends GetxController {
  Rx<List<CategoryModel>> categories = Rx<List<CategoryModel>>([]);

  RxBool isLoading = RxBool(false);

  Future getCategoryList() async {
    final url = 'http://10.0.2.2:8000/api/categories';
    final Uri uri = Uri.parse(url);

    try {
      isLoading.value = true;
      categories.value.clear();
      final http.Response response = await http.get(uri);
      // print(response.body);
      if (response.statusCode == 200) {
        isLoading.value = false;
        final content = convert.jsonDecode(response.body);
        final data = content['data'] as List;
        for (var item in data) {
          categories.value.add(CategoryModel.fromJson(item));
        }
      } else {
        isLoading.value = false;
        categories.value = [];
      }
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
    }
  }
}
