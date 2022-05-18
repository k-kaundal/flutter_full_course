import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('Email'),
                  hintText: 'Enter your Email id '
                ),
              ),
            ),
              ElevatedButton(
                onPressed: (){
                  

                },
                child: Container(child: Text('Click'),),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                  )
                ],
              )
          ]),
        ),
      ),
    );
  }
}
