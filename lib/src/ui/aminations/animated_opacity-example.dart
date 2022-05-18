import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double opacityLevel = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 2),
                child: FlutterLogo(
                  size: 300,
                )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                 opacityLevel =   opacityLevel == 0 ? 1.0 : 0.0;
                  });
                },
                child: Container(
                  child: Text("Click"),
                ))
          ],
        ),
      ),
    );
  }
}
