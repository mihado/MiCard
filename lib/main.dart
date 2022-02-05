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

    const title = Text('TYPIST',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'SourceSansPro',
            fontSize: 20,
            letterSpacing: 2.5));

    var phone = Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Row(children: <Widget>[
          Icon(Icons.phone, color: Colors.teal.shade900),
          const SizedBox(width: 10.0),
          Text('+64 225 225 368',
              style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20))
        ]));

    var email = Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Row(children: <Widget>[
          Icon(Icons.email, color: Colors.teal.shade900),
          const SizedBox(width: 10.0),
          Text('mihado@minh.im',
              style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20))
        ]));

    var bodyChildren = <Widget>[circleAvatar, name, title, phone, email];

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
