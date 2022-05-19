import 'package:flutter/material.dart';

class ClipRectExample extends StatefulWidget {
  const ClipRectExample({Key? key}) : super(key: key);

  @override
  State<ClipRectExample> createState() => _ClipRectExampleState();
}

class _ClipRectExampleState extends State<ClipRectExample> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              child: ClipRect(
                clipper: MyClip(),
                child: Container(
                  width: size.width,
                  child: Image.network(
                      'https://i.pinimg.com/736x/91/4c/8a/914c8ad918ebadc9b8a23a18bd592c6d.jpg',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.red,
              ),
            ),
            Expanded(
                child: ClipRect(
                  clipper: MyClip1(),
              child: Container(
                width: size.width,
                child: Image.network(
                  'https://png.pngtree.com/thumb_back/fh260/background/20201231/pngtree-close-up-of-beautiful-red-maple-image_518175.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(100, 100, size.height * 0.5, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}

class MyClip1 extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(size.width * 0.5, 100, 100, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
