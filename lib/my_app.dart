import 'package:flutter/material.dart';
import 'package:flutter_full_course/src/ui/custom_clipping/clipper_example.dart';
import 'package:flutter_full_course/src/ui/main_home.dart';
import 'package:flutter_full_course/src/ui/web/home.dart';
import 'package:flutter_full_course/src/ui/widgets/container_example.dart';
import 'package:flutter_full_course/src/ui/widgets/example/firebase_auth_example.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light(),
//       home: const CustomClipperExample(),
//     );
//   }
// }







class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: FirebaseAuthExample(),
    );
  }
}
