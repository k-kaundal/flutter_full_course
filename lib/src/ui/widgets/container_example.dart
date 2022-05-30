import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  State<ContainerExample> createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
            image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg',),fit: BoxFit.cover)
      ),
      // color: Colors.yellow,
      child: Text("Demo",style: TextStyle(fontSize: 100, color: Colors.blue),),
    );
  }
}
