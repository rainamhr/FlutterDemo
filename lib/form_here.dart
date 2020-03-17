import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: FormDemo(),
    );
  }
}
class FormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormDemoState();
  }
}

class _FormDemoState extends State<FormDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: _buildForm(),
    );
  }
}

Widget _buildForm() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      _buildEmailField(),
      _buildPasswordField(),
      _buildSubmitButton(),
    ],
  );
}

Widget _buildEmailField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Email'),
  );
}

Widget _buildPasswordField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Password'),
  );
}

Widget _buildSubmitButton() {
  return RaisedButton(
    onPressed: () { _submitForm();},
    child: Text('SEND'),
  );
}

void _submitForm() {
  print('Submitted');
}