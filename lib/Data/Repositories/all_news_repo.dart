import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Data/Models/all_news/all_news.dart';
import 'package:news_app/Data/Models/get_news_model.dart';

class AllNewsRepo {
  Future<AllNews?> getAllNews() async {
    try {
      var response = await http.get(
        Uri.parse(
            "https://newsapi.org/v2/everything?q=tesla&from=2023-07-25&sortBy=publishedAt&apiKey=b38428567e194926a2990538f4705bcf"),
      );

      Map<String, dynamic> decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        AllNews data = AllNews.fromJson(decodedResponse);

        return data;
      } else {
        print("faild");
      }
    } catch (error) {
      print("Error :$error");
    }
  }
}
