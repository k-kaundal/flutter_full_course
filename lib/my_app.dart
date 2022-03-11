import 'package:flutter/material.dart';
import 'package:flutter_full_course/src/aminations/animated_align_example.dart';
import 'package:flutter_full_course/src/aminations/animated_builder_example.dart';
import 'package:flutter_full_course/src/aminations/animated_container_example.dart';
import 'package:flutter_full_course/src/aminations/animated_cross_fade_example.dart';
import 'package:flutter_full_course/src/aminations/animated_default_text_style_example.dart';
import 'package:flutter_full_course/src/aminations/animated_list_state_example.dart';
import 'package:flutter_full_course/src/aminations/animated_opacity-example.dart';
import 'package:flutter_full_course/src/aminations/animated_physical_mode_example.dart';
import 'package:flutter_full_course/src/aminations/example_screen/builder_cross_fade.dart';
import 'package:flutter_full_course/src/aminations/hero_animation_example.dart';
import 'package:flutter_full_course/src/aminations/tween_animation_example.dart';
import 'package:flutter_full_course/src/hooks/hooks_gallery_app.dart';
import 'package:flutter_full_course/src/web/auth/screen/login.dart';
import 'package:flutter_full_course/src/web/home.dart';
import 'package:flutter_full_course/src/widgets/cupertino/cupertino_text_field.dart';
import 'package:flutter_full_course/src/widgets/cupertino/cupertino_time_picker_example.dart';
import 'package:flutter_full_course/src/widgets/placeholder_example.dart';
import 'package:flutter_full_course/src/widgets/text_field.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const CupertinoTimePickerExample()
    );
  }
}
