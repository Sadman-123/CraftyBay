import 'package:craftybay/data/api/api_urls.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Homecontroller extends GetxController {
  @override
  void onInit() {
    super.onInit();
    fetchCategoryList();
    fetchpopularproducts();
    fetchnewproducts();
    fetchspecialproducts();
  }
  RxInt ind = 0.obs;
  RxList<Map<String, dynamic>> categoryList = <Map<String, dynamic>>[].obs;
  RxList<Map<String, dynamic>> popularList = <Map<String, dynamic>>[].obs;
  RxList<Map<String, dynamic>> newList = <Map<String, dynamic>>[].obs;
  RxList<Map<String, dynamic>> specialList = <Map<String, dynamic>>[].obs;
  void fetchCategoryList() async {
    var url = Uri.parse(ApiUrls.category_list);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> x = jsonDecode(response.body)['data'];
      print(jsonDecode(response.body)['data']);
      categoryList.value = x.map((e) => e as Map<String, dynamic>).toList();
    } else {
      throw Exception("Failed to load data");
    }
  }
  void fetchpopularproducts() async {
    var url = Uri.parse(ApiUrls.popular_products_url);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> x = jsonDecode(response.body)['data'];
      print(jsonDecode(response.body)['data']);
      popularList.value = x.map((e) => e as Map<String, dynamic>).toList();
    } else {
      throw Exception("Failed to load data");
    }
  }
  void fetchspecialproducts() async {
    var url = Uri.parse(ApiUrls.special_products_url);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> x = jsonDecode(response.body)['data'];
      print(jsonDecode(response.body)['data']);
      specialList.value = x.map((e) => e as Map<String, dynamic>).toList();
    } else {
      throw Exception("Failed to load data");
    }
  }
  void fetchnewproducts() async {
    var url = Uri.parse(ApiUrls.new_products_url);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> x = jsonDecode(response.body)['data'];
      print(jsonDecode(response.body)['data']);
      newList.value = x.map((e) => e as Map<String, dynamic>).toList();
    } else {
      throw Exception("Failed to load data");
    }
  }
}
