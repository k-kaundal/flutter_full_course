import 'package:flutter/material.dart';

class ClipRRectExample extends StatefulWidget {
  const ClipRRectExample({Key? key}) : super(key: key);

  @override
  State<ClipRRectExample> createState() => _ClipRRectExampleState();
}

class _ClipRRectExampleState extends State<ClipRRectExample> {
  demo() {
    setState(() {});
  }

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
              child: ClipRRect(
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
              child: SizedBox(
                width: size.width,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Click'),
                ),
                // color: Colors.red,
              ),
            ),
            Expanded(
                child: ClipRRect(
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

class MyClip extends CustomClipper<RRect> {
  @override
  bool shouldReclip(oldClipper) {
    return false;
  }

  @override
  RRect getClip(Size size) {
    // TODO: implement getClip
    return RRect.fromRectAndRadius(Rect.zero, Radius.circular(30));
  }
}

class MyClip1 extends CustomClipper<RRect> {
  @override
  RRect getClip(Size size) {
    // TODO: implement getClip
    // return RRect.fromRectXY(
    //     Rect.fromCircle(center: Offset(3, 3), radius: 90), 80, 80);
    //
    return RRect.fromLTRBAndCorners(0, 0, 0, 0);
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}
