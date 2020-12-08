import 'package:flutter/material.dart';

void main() => runApp(Lista());

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Basic List Demo';

    return MaterialApp(
      title: appTitle,
      color: Color.fromRGBO(246, 241, 229, 1),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text(appTitle),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
