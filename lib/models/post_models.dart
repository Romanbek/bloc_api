// class PostModel {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   PostModel(
//       {required this.userId,
//       required this.id,
//       required this.title,
//       required this.body});
//   factory PostModel.fromJson(Map<String, dynamic> json) {
//     return PostModel(
//         userId: json['userId'],
//         id: json['id'],
//         title: json['title'],
//         body: json['body']);
//   }
// }
// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

// import 'dart:convert';

// List<PostModel> postModelFromJson(String str) =>
//     List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

// String postModelToJson(List<PostModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class PostModel {
//   PostModel({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.body,
//   });

//   int userId;
//   int id;
//   String title;
//   String body;

//   PostModel copyWith({
//     required int userId,
//     required int id,
//     required String title,
//     required String body,
//   }) =>
//       PostModel(
//         userId: userId,
//         id: id,
//         title: title,
//         body: body,
//       );

//   factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//       );

//   Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//       };
// }
// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

// import 'dart:convert';

// List<PostModel> postModelFromJson(String str) =>
//     List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

// String postModelToJson(List<PostModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class PostModel {
//   PostModel({
//     required this.userId,
//     required this.id,
//     required this.title,
//     required this.body,
//   });

//   final int userId;
//   final int id;
//   final String title;
//   final String body;

//   PostModel copyWith({
//     int? userId,
//     int? id,
//     String? title,
//     String? body,
//   }) =>
//       PostModel(
//         userId: userId ?? this.userId,
//         id: id ?? this.id,
//         title: title ?? this.title,
//         body: body ?? this.body,
//       );

//   factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//       );

//   Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//       };
// }

import 'dart:convert';
import 'package:http/http.dart';

List<PostModel> boredActivityFromJson(String str) =>
    List<PostModel>.from(json.decode(str).map((x) => PostModel.fromJson(x)));

String boredActivityToJson(List<PostModel> data) =>
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
