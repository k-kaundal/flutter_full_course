import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_full_course/src/hooks/helper/use_stream_example.dart';
import 'helper/user_state_example.dart';
class HooksGalleryApp extends HookWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Hooks Gallery'),
      ),
      body: ListView(
        children: [
          _GalleryItem(title: 'UseState', builder: (context) =>
              UserStateExample(size: 200)),
          _GalleryItem(title: 'UseStream', builder: (context) =>
              UseStreamExample(title: 'UseStream',)),
          // _GalleryItem(title: 'CustomHook', builder: (context) =>
          //     CustomHookExample()),
          // _GalleryItem(title: 'Planet', builder: (context) =>
          //     PlanetScreen()),
        ]
      ),
    );
  }

}
class _GalleryItem extends StatelessWidget {
  const _GalleryItem({required this.title,required this.builder});
 final String title;
 final WidgetBuilder builder;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.push(context, MaterialPageRoute<void>(builder: builder));
      },
    );
  }
}
