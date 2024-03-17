import 'package:dio/dio.dart';
import 'package:zdagada/Model/Article_Model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<Article_Model>> getGeneratNews({required String Category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=69f0f74af57f4732be1fc5fea9093172&category=$Category");
      Map<String, dynamic> JsonData = response.data;
      List<dynamic> articles = JsonData['articles'];
      List<Article_Model> list_article = [];

      for (var art in articles) {
        Article_Model article_model = Article_Model(
            image: art["urlToImage"],
            title: art['title'],
            description: art['description']);
        list_article.add(article_model);
      }
      return list_article;
    } catch (e) {
      return [];
    }
  }
}
