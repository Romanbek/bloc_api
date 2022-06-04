import 'dart:convert';
import 'package:http/http.dart';

List<PostModel> postModelFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String postModelToJson(List<PostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostModel {
  PostModel({
    required this.createdAt,
    required this.name,
    required this.title,
    required this.data,
    required this.id,
  });

  DateTime createdAt;
  String name;
  String title;
  int data;
  String id;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        title: json["title"],
        data: json["data"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "name": name,
        "title": title,
        "data": data,
        "id": id,
      };
}
