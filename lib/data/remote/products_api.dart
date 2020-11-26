import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:finaltest/domain/entities/product_entity.dart';

class ProductListApi {
  final url = 'https://nmc3m3hv1m.execute-api.us-east-2.amazonaws.com/testFase';
  Future<List<ProductEntity>> getProductsList() async {
    final response = await http.get(url);
    final Map<String, dynamic> decodeData = json.decode(response.body);
    final List<ProductEntity> products = new List();
    dynamic res = decodeData['data']['Items'];
    res.forEach((value) {
      final item = ProductEntity.fromJson(value);
      products.add(item);
    });
    return products;
  }
}
