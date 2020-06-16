import 'package:flutter/material.dart';
import 'data/constants.dart';
import 'footer/footer.dart';
import 'gallery/gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      ),
      bottomNavigationBar: footerGallery(),
    );
  }
}



