class Article  {

   String? title;
     int? id;

   String? link;
   String? keywords;
    String? creator;
  String? image_url;




  Article({this.link, this.keywords, this.creator, this.image_url, this.title,this.id});




  Article.fromJson(Map<String, dynamic> json) {

    title = json['title'];
    id = json['id'];
    link = json['link'];
    keywords = json['keywords'];
    creator = json['creator'];
    image_url = json['image_url'];


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['id'] = id;
    data['link'] = link;
    data['keywords'] = keywords;
    data['creator'] = creator;
    data['image_url'] = image_url;

    return data;
  }
}
