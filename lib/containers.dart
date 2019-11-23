import 'package:flutter/material.dart';
import 'dart:ui';

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child:  Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color:Color.fromRGBO(236, 154, 156, 1)),
      ),
      clipper: TopContainerWaveClipper(),
    );
  }
}


class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color:Color.fromRGBO(253, 234,236 , 1)),
      ),
      clipper: BottomContainerWaveClipper(),
    );
  }
}

class TopContainerWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(size.width/1.7, 0.0);

    // an Endpoint is just like a path.lineTo

    //first quadraticBezier curve
    var firstControlPoint = Offset(size.width/1.7, size.height/40);
    var firstEndPoint = Offset(size.width/1.55, size.height/6);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

  //second quadraticBezier curve
    var secondControlPoint = Offset(size.width/1.4,size.height/3.2);
    var secondEndPoint = Offset(size.width, size.height/3);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //path.lineTo(size.width, size.height/3);
    path.lineTo(size.width, size.height-size.height/10);


  //third quadraticBezier curve
    var thridControlPoint = Offset(size.width - size.width/25, size.height-size.height/17);
    var thirdEndPoint = Offset(size.width - size.width/6, size.height);
    path.quadraticBezierTo(thridControlPoint.dx, thridControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    //path.lineTo(size.width - size.width/6, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}





class BottomContainerWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(size.width/1.55, 0.0);

    // an Endpoint is just like a path.lineTo

    //first quadraticBezier curve
    var firstControlPoint = Offset(size.width/1.52, size.height/40);
    var firstEndPoint = Offset(size.width/1.45, size.height/8);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

  //second quadraticBezier curve
    var secondControlPoint = Offset(size.width/1.35,size.height/4);
    var secondEndPoint = Offset(size.width, size.height/3.9);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    //path.lineTo(size.width, size.height/3);
    path.lineTo(size.width, size.height-size.height/10);


  //third quadraticBezier curve
    var thridControlPoint = Offset(size.width - size.width/25, size.height-size.height/17);
    var thirdEndPoint = Offset(size.width - size.width/6, size.height);
    path.quadraticBezierTo(thridControlPoint.dx, thridControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    //path.lineTo(size.width - size.width/6, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}