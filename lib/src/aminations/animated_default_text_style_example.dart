import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleExample> createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleExample>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
              isClick = !isClick;
            });

          },
          child: AnimatedDefaultTextStyle(
            duration: Duration(seconds: 2),
            style: TextStyle(color: isClick?Colors.blue:Colors.red, fontSize: 50),
            child: Text('Flutter'),
          ),
        ),
      ),
    );
  }
}
