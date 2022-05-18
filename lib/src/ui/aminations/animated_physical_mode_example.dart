import 'package:flutter/material.dart';
class AnimatedPhysicalModeExample extends StatefulWidget {
  const AnimatedPhysicalModeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModeExample> createState() => _AnimatedPhysicalModeExampleState();
}

class _AnimatedPhysicalModeExampleState extends State<AnimatedPhysicalModeExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedPhysicalModel(
          shadowColor: Colors.black,
          shape: BoxShape.rectangle,
          elevation: 3,
          duration: Duration(seconds: 3),
          color: Colors.blue,
          curve: Curves.fastOutSlowIn,
          child: Container(
          height: 200,
          width: 200,
        ),),
      ),
    );
  }
}
