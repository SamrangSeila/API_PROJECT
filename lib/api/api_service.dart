import 'dart:convert';

import 'package:http/http.dart'as http;

import '../Model/new_res_model.dart';
class APISerivce{
  Future<NewsResModel> getAllNews() async{
    String uri = "https://newsapi.org/v2/everything?q=tesla&from=2023-04-18&sortBy=publishedAt&apiKey=41c325968e96448d91dba93ab1adc367";
    final res = await http.get(Uri.parse(uri));
    print(res.body);
    if(res.statusCode==200){
      return NewsResModel.fromJson(jsonDecode(res.body));
    }
    else{
      throw Exception("Failed to load dataaaa");
    }
  }
}