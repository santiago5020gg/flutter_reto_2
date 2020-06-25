import 'package:flutter/material.dart';
import 'package:reto2_0/gallery/image_detail.dart';
//import 'package:reto2_0/gallery/image_detail.dart';
import 'data/constants.dart';
import 'footer/footer.dart';
import 'gallery/gallery.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: HomeP(),
  ));
}

class HomeP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
      ),
      body: ListView(
        children: <Widget>[
          gallery(HORIZONTAL),
          gallery(VERTICAL),
        ],
        // children: <Widget>[this.contentGallery[this.indexTap]],
      ),
      bottomNavigationBar: footerGallery(),
    );
  }
}

class ImageDetailMain extends StatelessWidget {
  final String pathImage;
  final String t1;
  final String t2;
  final String t3;
  ImageDetailMain(this.pathImage, this.t1, this.t2, this.t3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App bar'),
        ),
        body: Container(
          child: ImageDetail(this.pathImage, t1, t2, t3),
        ));
  }
}
