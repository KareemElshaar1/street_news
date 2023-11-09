class ArticaleModel {
  final String? Image;
  final String title;
  final String? subTitle;

  ArticaleModel({
    required this.Image,
    required this.title,
    required this.subTitle,
  });

  factory ArticaleModel.fromJson(json) {
    return ArticaleModel(
      Image: json["urlToImage"],
      title: json["title"],
      subTitle: json["description"],
    );
  }
}

