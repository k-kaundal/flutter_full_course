import 'package:flutter/material.dart';
class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration:const Duration(seconds: 4) ,vsync: this);
  _animation = Tween<double>(begin: 0,end: 300).animate(_controller)
    ..addListener(() {
      setState(() {

      });
    });
  _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        height: _animation.value,
        width: _animation.value,
        child: FlutterLogo(),
      )),
    );
  }
}
