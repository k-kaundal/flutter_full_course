import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key? key, required this.photo, required this.onTap, required this.width}) : super(key: key);
final String photo;
final VoidCallback onTap;
final double width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    
    Center(child: SizedBox(
      width: width,
      child: Hero(tag: photo, child: Material(
        child: InkWell(
          onTap: onTap,
          child: Image.network(photo,fit: BoxFit.cover,),
        ),
      ),),
    )));
  }
}
