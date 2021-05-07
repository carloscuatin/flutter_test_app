import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_test_app/providers/post.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  void initState() {
    super.initState();
    final postProvider = Provider.of<PostProvider>(context, listen: false);
    postProvider.getPosts(context);
  }

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: ListView.builder(
          itemCount: postProvider.posts.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${postProvider.posts[index].title}'),
            );
          },
        ));
  }
}
