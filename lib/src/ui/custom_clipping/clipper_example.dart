import 'package:flutter/material.dart';
class CustomClipperExample extends StatefulWidget {
  const CustomClipperExample({Key? key}) : super(key: key);

  @override
  State<CustomClipperExample> createState() => _CustomClipperExampleState();
}

class _CustomClipperExampleState extends State<CustomClipperExample> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipperTop(),
                child: Container(
                  height: size.height*0.5,
                  color: Colors.red,
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClipperTop(),
              child: Container(
                height: size.height*0.49,
                color: Colors.red,
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipperTop(),
                child: Container(
                  height: size.height*0.48,
                  color: Colors.yellow,
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClipperTop(),
              child: Container(
                height: size.height*0.47,
                color: Colors.blue,
              ),
            ),


          ],
        ),
      ),
    );
  }
}


class WaveClipperTop extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    //
    path.lineTo(0, size.height-(size.height*0.02));
    var firstStart = Offset(size.width/5, size.height);
    var firstEnd = Offset(size.width/2.25, size.height-(size.height*0.07));
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);


    var secondStart = Offset(size.width-(size.width/3.25), size.height-(size.height*0.15));
    var secondEnd = Offset(size.width, size.height-(size.height*0.1));
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, size.height-(size.height*0.1));
    path.lineTo(size.width, 0);

    path.close();
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}

