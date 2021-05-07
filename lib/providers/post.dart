import 'package:flutter/foundation.dart';
import 'package:flutter_test_app/services/post.dart';

class PostProvider with ChangeNotifier {
  PostServices postServices = PostServices();
  List posts = [];

  Future getPosts(context) async {
    posts = await postServices.getPostsData(context);
    notifyListeners();
  }
}
