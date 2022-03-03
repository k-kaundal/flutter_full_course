import 'package:flutter/material.dart';
import 'package:flutter_full_course/src/hooks/hooks_gallery_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HooksGalleryApp(),
    );
  }
}
