import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const circleAvatar = CircleAvatar(
      radius: 50.0,
      backgroundColor: Colors.red,
      backgroundImage: AssetImage('assets/images/deviantArtID.png'),
    );

    const name = Text('Minh Ha',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico',
            fontSize: 40.0,
            fontWeight: FontWeight.bold));

    const title = Text('Typist',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'SourceSansPro',
            fontSize: 20,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold));

    const bodyChildren = <Widget>[circleAvatar, name, title];

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(
            children: bodyChildren,
          ))),
    );
  }
}
