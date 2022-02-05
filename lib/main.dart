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

    var phone = Card(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(Icons.phone, color: Colors.teal.shade900),
          title: Text('+64 225 225 368',
              style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20)),
        ));

    var email = Card(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(Icons.email, color: Colors.teal.shade900),
          title: Text('mihado@minh.im',
              style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'SourceSansPro',
                  fontSize: 20)),
        ));

    var divider = SizedBox(
        height: 20.0,
        width: 150.0,
        child: Divider(color: Colors.teal.shade100));

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              circleAvatar,
              name,
              title,
              divider,
              phone,
              email
            ],
          ))),
    );
  }
}
