import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextFieldExample extends StatefulWidget {
  const CupertinoTextFieldExample({Key? key}) : super(key: key);

  @override
  State<CupertinoTextFieldExample> createState() =>
      _CupertinoTextFieldExampleState();
}

class _CupertinoTextFieldExampleState extends State<CupertinoTextFieldExample> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return CupertinoPageScaffold(
        child: Center(
      child: Container(
        width: size.width*0.8,
        child: CupertinoTextField(
          placeholder: 'Email',
          decoration: BoxDecoration(
            color: Colors.blue
          ),
        ),
      ),
    ));
  }
}
