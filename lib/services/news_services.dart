import 'package:dio/dio.dart';
import 'package:news_street/models/articale_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticaleModel>> getTopHeadLines({required String category}) async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?"
              "country=us&"
              "apiKey=7363f005ffc145d5aeb6f5aa8cfeeb13&"
              "category=$category");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticaleModel> articlesList = [];
      for (var article in articles) {
        ArticaleModel atrticleModel = ArticaleModel.fromJson(article);
        articlesList.add(atrticleModel);
      }
      return articlesList;
    }
    catch (e) {
      return[];
    }
  }
}
