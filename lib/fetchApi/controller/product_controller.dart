
import 'dart:convert';

import 'package:flutter_app_getx/fetchApi/model/product.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class product_controller extends GetxController{
  RxBool loading=true.obs;
  RxList <product> products=<product>[].obs;
  @override
  onInit()
  {
    setProducts();
  }
  setProducts() async {
    var url ="http://welearnacademy.ir/flutter/products_list.json";
    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonResponse =convert.jsonDecode(utf8.decode(response.bodyBytes)) ;
      jsonResponse.forEach((element)
        {
          products.add(product.fromJson(element));
        }
      );
      // print(products );
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
    loading.value=false;
  }
}