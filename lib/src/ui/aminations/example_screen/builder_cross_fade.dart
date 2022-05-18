import 'package:flutter/material.dart';
import 'dart:math' as math;
class BuilderCrossFade extends StatefulWidget {
  const BuilderCrossFade({Key? key}) : super(key: key);

  @override
  State<BuilderCrossFade> createState() => _BuilderCrossFadeState();
}

class _BuilderCrossFadeState extends State<BuilderCrossFade> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isClick = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedCrossFade(firstChild: AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(angle: _controller.value*2.0*math.pi,
          child: child,);
      },
      child: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              isClick = !isClick;
            });
          },
          child: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(180)),
                image: DecorationImage(image: NetworkImage('https://creationcenter.org/wp-content/uploads/2018/04/The-Power-of-OM.jpg'),)
            ),
          ),
        ),
      ),
    ), secondChild: GestureDetector(
      onTap: (){
        setState(() {
          isClick = !isClick;
        });
      },
      child: AnimatedContainer(
        height:size.height,
        width: size.width,
        duration: Duration(seconds: 3),
      child: Image.network('https://cdn.myimgstock.com/myimgstock/preview/mahadev-black-phone-wallpaper-hd-11609555284zkx0hexokj.jpg',fit: BoxFit.cover,),),
    ), crossFadeState: isClick?CrossFadeState.showFirst:CrossFadeState.showSecond, duration: Duration(seconds: 3));
  }
}
