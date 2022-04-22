import 'dart:convert';

import 'package:http/http.dart' as http;

class CallApi {
  final String _url = 'http://10.0.2.2:8000/api/';
  final String _productimgurl = 'http://10.0.2.2:8000/products_images/';

  getImage() {
    return _productimgurl;
  }

  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    return http.post(
      Uri.parse(fullUrl),
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    return await http.get(
      Uri.parse(fullUrl),
      headers: _setHeaders(),
    );
  }

  getProductsData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    http.Response response = await http.get(
      Uri.parse(fullUrl),
      headers: _setHeaders(),
    );
    try {
      if (response.statusCode == 200) {
        return response;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return 'failed';
    }
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
