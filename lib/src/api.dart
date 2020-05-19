import 'dart:convert';

import 'package:http/http.dart' as http;
import 'models/post/post.dart';

class Api {
  String baseUrl = 'https://jsonplaceholder.typicode.com/';
  Api({this.baseUrl = 'https://jsonplaceholder.typicode.com'});

  Future<List<Post>> getPost() async {
    final uri = Uri.parse('$baseUrl/posts');
    final res = await http.get(uri);
    final json = jsonDecode(res.body);

    List<Post> posts = [];

    // generate List of Posts from Post.fromJson by iterating overs json array
    json.forEach((e) => posts.add(Post.fromJson(e)));
    // print(posts.first.body);
    return posts;
  }
}
