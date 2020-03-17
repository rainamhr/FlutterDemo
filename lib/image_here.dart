import 'package:flutter/material.dart';
import 'show_hide_button.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: ImageView(),
    );
  }
}

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Image.asset('assets/image/image.png'),
    );
  }
}