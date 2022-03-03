import 'package:flutter/material.dart';
import 'package:flutter_full_course/src/hooks/helper/user_state_example.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
class UseStreamExample extends HookWidget{
  final String title;
  const UseStreamExample({Key? key, required this.title})
  : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _controller = useStreamController<int?>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Hook'),
      ),
      body:HookBuilder(
        builder: (context){
          var  count = useStream(_controller.stream);
          return GestureDetector(
              onTap: () {
                _controller.add(count.data! + 1);
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserStateExample(size: 200)));
              },
    
              child: Center(child: Text('You tapped me ${count.data}  times')),
            );
              

        },
      ) ,
    );
  }
}