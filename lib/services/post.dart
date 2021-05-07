import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_test_app/models/post.dart';

class PostServices {
  String endpoint = 'jsonplaceholder.typicode.com';

  Future getPostsData(context) async {
    List result = [];

    try {
      var uri = Uri.https(endpoint, '/posts');
      var response = await http.get(uri);

      if (response.statusCode == 200) {
        result = json
            .decode(response.body)
            .map((data) => PostModel.fromJson(data))
            .toList();
      }
    } catch (e) {
      print(e);
    }

    return result;
  }
}
