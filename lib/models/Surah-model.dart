import 'dart:convert';

List<Surah> surahFromJson(String str) =>
    List<Surah>.from(json.decode(str).map((x) => Surah.fromJson(x)));

String surahToJson(List<Surah> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Surah {
  Surah({
    required this.count,
    required this.title,
    required this.titleAr,
    required this.index,
  });

  int count;
  String title;
  String titleAr;
  String index;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        count: json["count"],
        title: json["title"],
        titleAr: json["titleAr"],
        index: json["index"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "title": title,
        "titleAr": titleAr,
        "index": index,
      };
}
