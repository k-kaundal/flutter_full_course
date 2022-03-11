import 'package:flutter/material.dart';

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({Key? key}) : super(key: key);

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      width: size.width,
      height: size.height,
      child: Center(
        child: ElevatedButton(
          onPressed: () {

            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => Wrap(children: [
                      Container(
                        height: size.height*0.8,
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: ((context, index) => Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("$index Item"))),
                        ),
                      ),
                    ]));

            showModalBottomSheet(
                context: context,
                builder: (context) => Wrap(children: [
                      Container(
                        height: size.height*0.5,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: ((context, index) => Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("$index Item"))),
                        ),
                      ),
                    ]));
          },
          child: Text("Click"),
        ),
      ),
    ));
  }
}
