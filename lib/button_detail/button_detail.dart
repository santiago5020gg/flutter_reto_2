import 'package:flutter/material.dart';
import 'package:reto2_0/main.dart';

class ButtonDetail extends StatelessWidget {
  final String pathImage;
  final String t1;
  final String t2;
  final String t3;
  ButtonDetail(this.pathImage, this.t1, this.t2, this.t3);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: this.pathImage,
      backgroundColor: Color(0XFF16c98d),
      mini: true,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ImageDetailMain(this.pathImage, t1, t2, t3)),
        );
      },
      child: Icon(Icons.search),
    );
  }
}

