import 'package:flutter/material.dart';
import 'package:flutter_full_course/src/ui/main_home.dart';
import 'package:flutter_full_course/src/ui/web/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MainHome(),
    );
  }
}
