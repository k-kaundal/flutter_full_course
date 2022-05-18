import 'package:flutter/material.dart';
import 'package:flutter_full_course/src/ui/aminations/helper/photo_hero.dart';

class HeroAnimationExample extends StatefulWidget {
  const HeroAnimationExample({Key? key}) : super(key: key);

  @override
  State<HeroAnimationExample> createState() => _HeroAnimationExampleState();
}

class _HeroAnimationExampleState extends State<HeroAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
    return Scaffold(body: Container(
      child: Center(
        child: PhotoHero(
          width: 300,
          photo: 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return Scaffold(
                body:Container(
                  // The blue background emphasizes that it's a new route.
                  color: Colors.lightBlueAccent,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.topLeft,
                  child: PhotoHero( photo: 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                    width: 100.0,
                    onTap: () {
                      Navigator.of(context).pop();
                    },)
                ),
              );
            }));
          },
        ),
      ),
    ));
  }
}
