import 'dart:collection';

class NovelListResponse {
  int id;
  String title;
  String introduction;
  String publisher;
  String author;
  int purchasePoint;
  bool openToPublic;
  String createdDate;
  LinkedHashMap<String, dynamic> coverImage;

  NovelListResponse(
      {required this.id,
        required this.title,
        required this.introduction,
        required this.publisher,
        required this.author,
        required this.purchasePoint,
        required this.openToPublic,
        required this.createdDate,
        required this.coverImage});

  factory NovelListResponse.fromJson(Map<String, dynamic> json) {
    return NovelListResponse(
        id: json["id"],
        title: json["title"],
        introduction: json["introduction"],
        publisher: json["publisher"],
        author: json["author"],
        purchasePoint: json["purchasePoint"],
        openToPublic: json["openToPublic"],
        createdDate: json["createdDate"],
        coverImage: json["coverImage"]);
  }
}

class NovelResponse {
  int id;
  String title;
  String introduction;
  String publisher;
  String author;
  int purchasePoint;
  bool openToPublic;
  String createdDate;
  String category;
  String thumbnail;

  NovelResponse(
      {required this.id,
        required this.title,
        required this.introduction,
        required this.publisher,
        required this.author,
        required this.purchasePoint,
        required this.openToPublic,
        required this.createdDate,
        required this.category,
        required this.thumbnail});

  factory NovelResponse.fromJson(Map<String, dynamic> json) {
    return NovelResponse(
        id: json["id"],
        title: json["title"],
        introduction: json["introduction"],
        publisher: json["publisher"],
        author: json["author"],
        purchasePoint: json["purchasePoint"],
        openToPublic: json["openToPublic"],
        createdDate: json["createdDate"],
        category: json["category"],
        thumbnail: json["thumbnail"]);
  }
}