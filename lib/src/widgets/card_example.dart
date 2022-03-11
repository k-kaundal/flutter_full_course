import 'package:flutter/material.dart';

class CardExample extends StatefulWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  State<CardExample> createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(
          child: Card(
            child: Container(
              width: size.width*0.8,
              height: size.height*0.3,
              child: Column(
                children: [
                  Expanded(child: TextField()),
                  Expanded(child: TextField()),
                  Expanded(child: TextField()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
