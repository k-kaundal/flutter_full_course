import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _first = true;

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
              _first = !_first;
            });
          },
          child: AnimatedCrossFade(
            crossFadeState:
                _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 2),
            secondChild: FlutterLogo(size: 80,style: FlutterLogoStyle.markOnly),
            firstChild: FlutterLogo(style: FlutterLogoStyle.stacked,
              size: 90,
            ),
          ),
        ),
      ),
    );
  }
}
