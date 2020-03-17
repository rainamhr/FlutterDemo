import 'package:flutter/material.dart';

List<String> dataList = [
  "This is the first line of list view",
  "A demo project on list view using flutter",
  "Quickly ship features with a focus on native end-user experiences. Layered architecture allows for full customization, which results in incredibly fast rendering and expressive and flexible designs.",
  "Delight your users with Flutter's built-in beautiful Material Design and Cupertino (iOS-flavor) widgets, rich motion APIs, smooth natural scrolling, and platform awareness.",
  "An award winning mindfulness app built with Flutter.",
  "Flutter’s widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts to provide full native performance on both iOS and Android.",
  "Watch these videos to learn from Google and developers as you build with Flutter.",
  "Organizations around the world are building apps with Flutter.",
  "Install Flutter today.",
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: ListHere(),
    );
  }
}

class ListHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (context, pos) {
        return Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Text(
                  dataList[pos],
                  style: TextStyle(
                    fontSize: 16.0,
                    height: 1.6,
                  ),
                ),
              ),
            ));
      },
    );
  }
}
