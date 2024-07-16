import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:selling_products_task/api/apiConstants.dart';
import 'package:selling_products_task/model/SourceRsesponceProduct.dart';

class ApiManager {
  static  Future<SourceResponseProduct?> getSources()async {
    Uri url = Uri.https(ApiConstants.baseUrl,ApiConstants.sourcesApi);
    try{
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      return SourceResponseProduct.fromJson(json);
    }catch(e){
      print("Error occurred: $e");
      throw e;
    }
  }
  static  Future<SourceResponseProduct?> searchArtical(String qury)async {
    Uri url = Uri.https(ApiConstants.baseUrl,ApiConstants.sourcesApi);
    try{
      var response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      return SourceResponseProduct.fromJson(json);
    }catch(e){
      print("Error occurred: $e");
      throw e;
    }
  }
}
