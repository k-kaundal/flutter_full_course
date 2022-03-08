import 'package:flutter/material.dart';
class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool isClick= false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: InkWell(
          onDoubleTap: (){
            setState(() {
             isClick = !isClick;
            });
          },
          onTap: (){
            setState(() {
             isClick  = !isClick;
            });
          },
          child: Center(
            child: Container(
              height: 250,
              width: 250,
              color: Colors.green,
              child: AnimatedAlign(
                alignment: isClick?Alignment.topRight:Alignment.bottomLeft,
                duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: 40,),),
            ),
          ),
        ),
      ),
    );
  }
}
