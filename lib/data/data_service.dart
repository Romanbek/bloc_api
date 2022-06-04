import 'dart:developer';

import 'package:bloc_api/models/post_models.dart';
import 'package:http/http.dart';

// class DataService {
//   Future<List<PostModel>> getPosts() async {
//     print('readern');
//     try {
//       final url =
//           Uri.parse('https://62626d89d5bd12ff1e7ce96a.mockapi.io/dataBase');
//       final response = await http.get(url);
//       print(response.statusCode);
//       if (response.statusCode == 200) {
//         final json = jsonDecode(response.body);
//         final posts = json.map((e) => PostModel.fromJson(e)).toList();
//         return posts;
//       } else {
//         throw Exception('Failed to load posts');
//       }
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
class DataService {
  Future<List<PostModel>> getPosts() async {
    final response = await get(
        Uri.parse('https://62626d89d5bd12ff1e7ce96a.mockapi.io/dataBase'));
    final activity = postModelFromJson(response.body);
    log(response.body);
    return activity;
  }
}
