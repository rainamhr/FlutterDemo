import 'package:flutter/material.dart';
import 'package:myflutter/image_here.dart';
import 'package:myflutter/form_here.dart';
import 'package:myflutter/list_view.dart';

class ShowHideButton extends StatefulWidget {

  @override
  ShowHideButtonState createState() {
    return new ShowHideButtonState();
  }
}

class ShowHideButtonState extends State<ShowHideButton> {
  //boolean value to determine whether to show or hide button. `true` by default
  bool _canShowButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Center(
                child: _canShowButton
                    ? RaisedButton(
                        color: Colors.tealAccent,
                        child: Text('A centralized Button'),
                        onPressed: () {},
                      )
                    : SizedBox(),
              ),
            ),
            FlatButton(
              child: Text(_canShowButton
                  ? 'Click me to Hide Button'
                  : 'CLick me to Show Button'),
              onPressed: () {
                setState(() => _canShowButton = !_canShowButton);
              },
            ),
            FlatButton(
              child: Text('Click me to Show Image'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageView()),
                );
              },
            ),
            FlatButton(
              child: Text('Click me Too'),
              onPressed: () {
                Navigator.push(
                  context,

                  //textview ko page rakhne
                  MaterialPageRoute(builder: (context) => FormDemo()),
                );
              },
            ),
            FlatButton(
              child: Text('Click me for list'),
              onPressed: () {
                Navigator.push(
                  context,

                  //textview ko page rakhne
                  MaterialPageRoute(builder: (context) => ListHere()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
