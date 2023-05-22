import 'dart:convert';

import 'package:api_database/model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final _baseUrl = 'https://645b8b38a8f9e4d6e76b7a16.mockapi.io/anime_waifu';

  Future<List<anime_waifu>> getData() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      Iterable it = jsonDecode(response.body);
      List<anime_waifu> anime = it.map((e) => anime_waifu.fromJson(e)).toList();
      return anime;
    } else {
      throw Exception('Failed to load data');
    }
  }
}


// import 'dart:convert';

// import 'package:api_database/model.dart';
// import 'package:http/http.dart' as http;

// class repository {
//   final _baseUrl = 'https://645b8b38a8f9e4d6e76b7a16.mockapi.io/anime_waifu';

//   Future getData() async {
//     final response = await http.get(Uri.parse(_baseUrl));
//     if (response.statusCode == 200) {
//       print(response);
//       Iterable it = jsonDecode(response.body);
//       List<anime_waifu> anime = it.map((e) => anime_waifu.fromJson(e)).toList();
//       return anime_waifu;
//     }
//     try {} catch (e) {
//       print(e.toString());
//     }
//   }
// }
