import 'package:flutter/cupertino.dart';

class TClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var w = size.width;
    var h = size.height;
    path.moveTo(0, 0);
    path.lineTo(0, h / 3);
    path.quadraticBezierTo(w / 2, h / 2, w - 30, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class TClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var w = size.width;
    var h = size.height;
    path.moveTo(w, 0);
    path.quadraticBezierTo(w - 150, h / 2, w, h - 50);
    path.lineTo(w, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class TClip3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var h = size.height;
    path.moveTo(0, 0);
    path.lineTo(0, 120);
    path.quadraticBezierTo(100, h - 100, 0, h);
    path.lineTo(0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class TClip4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var w = size.width;
    var h = size.height;
    path.moveTo(0, h);
    path.quadraticBezierTo(w/2, h - 100, w, h);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class TClip5 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var w = size.width;
    var h = size.height;
    path.moveTo(0, 0);
    path.lineTo(0, h-70);
    path.lineTo(w, 50);
    path.lineTo(w, 0);



    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
