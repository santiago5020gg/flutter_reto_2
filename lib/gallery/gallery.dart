import 'package:flutter/material.dart';
import 'package:reto2_0/button_detail/button_detail.dart';
import 'package:reto2_0/data/constants.dart';
import 'package:reto2_0/data/data.dart';

gallery(type) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    height: type == HORIZONTAL ? 120.0 : 400,
    color: Colors.grey[50],
    child: listImages(type),
  );
}

listImages(type) {
  List imagesList = getImagesList(type);
  return ListView(
    scrollDirection: type == HORIZONTAL ? Axis.horizontal : Axis.vertical,
    children: <Widget>[...imagesList],
  );
}

getImagesList(type) {
  List imagesList = [];
  for (var value in type == HORIZONTAL ? jsonPlaces : jsonCharacters) {
    imagesList
        .add(imgText(value['img'], value['t1'], value['t2'], value['t3']));
  }
  return imagesList;
}

imgText(image, t1, t2, t3) {
  return Stack(
    alignment: Alignment(0.9, 1.1),
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 30.0, bottom: 10.0),
        child: Row(
          children: <Widget>[imageF(image), texts(t1, t2, t3)],
        ),
      ),
      ButtonDetail(image, t1, t2, t3)
    ],
  );
}

imageF(image) {
  return Image(
    height: 120.0,
    width: 120.0,
    fit: BoxFit.cover,
    image: AssetImage(image),
  );
}

texts(t1, t2, t3) {
  return Container(
    margin: EdgeInsets.only(left: 10.0, top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleText(t1), normalText(t2), normalText(t3)],
    ),
  );
}

titleText(text) {
  return Text(text, style: styleTitleText());
}

styleTitleText() {
  return TextStyle(fontWeight: FontWeight.bold, color: Colors.green);
}

normalText(text) {
  return Text(text);
}
