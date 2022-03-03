import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
class UserStateExample extends HookWidget{
  final double size;
 const UserStateExample({Key,key,required this.size});
  @override
  build(BuildContext context) {
    // TODO: implement build
    final clicks = useState(0);
    final scale = useState(1.0);
    final _controller = useAnimationController(
        duration: Duration(seconds: 1),
        lowerBound: 0.8,
        upperBound: 1.0
    );

    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child){
          return Transform.scale(
            scale: scale.value,
            child: child,
          );
        },
      child: GestureDetector(
        onTap: (){
          clicks.value++;
          _controller.reverse(from:1.0);
        },
        child: Container(height: size,
        width: size,
        color: Colors.blue,
        child: Center(
          child: Text('${clicks.value}'),
        ),),
      ),
        );
  }

}