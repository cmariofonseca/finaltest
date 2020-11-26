import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:finaltest/domain/entities/country_entity.dart';

class CountryListApi {
  final url =
      'https://37k4rjm51i.execute-api.us-east-2.amazonaws.com/countryFase';
  Future<List<CountryEntity>> getCountriesList() async {
    final response = await http.get(url);
    final Map<String, dynamic> decodeData = json.decode(response.body);
    final List<CountryEntity> countries = new List();
    dynamic res = decodeData['data']['Items'];
    res.forEach((value) {
      final item = CountryEntity.fromJson(value);
      countries.add(item);
    });
    return countries;
  }
}
