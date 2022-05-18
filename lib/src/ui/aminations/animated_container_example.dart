import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample>
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
      body: InkWell(
        onTap: () {
          setState(() {
            isClick = !isClick;
          });
        },
        child: AnimatedContainer(
          height: isClick ? 200 : 400,
          width: isClick ? 200 : 400,
          color: isClick?Colors.blue:Colors.red,
          alignment:
              isClick ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 75),
        ),
      ),
    );
  }
}
