import 'package:flutter/material.dart';

class AnimatedListStateExample extends StatefulWidget {
  const AnimatedListStateExample({Key? key}) : super(key: key);

  @override
  State<AnimatedListStateExample> createState() =>
      _AnimatedListStateExampleState();
}

class _AnimatedListStateExampleState extends State<AnimatedListStateExample> {
  List list = List.of({1, 2, 3, 4, 5});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedList(
      initialItemCount: 1,
      itemBuilder:
          (BuildContext context, int index, Animation<double> animation) {
        return SafeArea(
          child: Card(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(list[index]),
            ),
          ),
        );
      },
    ));
  }
}
