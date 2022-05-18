import 'package:flutter/material.dart';
class PlaceHolderExample extends StatefulWidget {
  const PlaceHolderExample({Key? key}) : super(key: key);

  @override
  State<PlaceHolderExample> createState() => _PlaceHolderExampleState();
}

class _PlaceHolderExampleState extends State<PlaceHolderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Placeholder(
            color: Colors.black,
            strokeWidth: 2.0,
            fallbackHeight: 50,
            fallbackWidth: 50,
          ),
        ),
      ),
    );
  }
}
