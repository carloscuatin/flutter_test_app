import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';
import 'providers/auth.dart';
import 'providers/post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),
        ChangeNotifierProvider<PostProvider>(create: (_) => PostProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Controller(),
      ),
    );
  }
}
