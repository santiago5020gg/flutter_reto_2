import 'package:flutter/material.dart';

footerGallery() {
  return BottomNavigationBar(
    currentIndex: 0, // this will be set when a new tab is tapped
    items: [
      footerIcon(Icons.home,'Casa'),
      footerIcon(Icons.mail,'Correo')
    ],
  );
}

footerIcon(icon, String text) {
  return BottomNavigationBarItem(
    icon: new Icon(icon),
    title: new Text(text),
  );
}
