

import 'article_model.dart';

class Articles{
 late final List<Article> articles;
 Articles({required this.articles});
  factory Articles.fromjson(Map<String,dynamic>jsonData){
     return Articles(articles: jsonData["results"]);
   }


}