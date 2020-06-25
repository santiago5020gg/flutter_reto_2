import 'package:flutter/material.dart';
import 'package:reto2_0/gallery/gallery.dart';

class ImageDetail extends StatelessWidget {
  final String pathImage;
  final String t1;
  final String t2;
  final String t3;
  ImageDetail(this.pathImage, this.t1, this.t2, this.t3);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image(
            fit: BoxFit.cover,
            image: AssetImage(this.pathImage),
          ),
          textDetail()
        ],
      ),
    );
  }

  textDetail() {
    return texts(this.t1, this.t2, this.t3);
  }
}
