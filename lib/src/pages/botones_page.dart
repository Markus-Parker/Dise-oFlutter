import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class Constants {
  static const String FirstItem = 'First Item';
  static const String SecondItem = 'Second Item';
  static const String ThirdItem = 'Third Item';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
    ThirdItem,
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.FirstItem) {
    print('I First Item');
  } else if (choice == Constants.SecondItem) {
    print('I Second Item');
  } else if (choice == Constants.ThirdItem) {
    print('I Third Item');
  }
}

class BotonesPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cosas',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/animal2.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    _titulos(),
                    _botonesRedondeados(context),
                  ],
                ),
              )
            ],
          ),
          appBar: new AppBar(
            title: new Text('Animal Crossing Diseño App'),
            backgroundColor: Colors.brown,
            actions: <Widget>[
              PopupMenuButton<String>(
                onSelected: choiceAction,
                itemBuilder: (BuildContext context) {
                  return Constants.choices.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Animal Crossing',
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  Widget _botonesRedondeados(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          icono(context, 'Lista', 'sqlite'),
          icono(context, 'Video', 'video'),
        ]),
        TableRow(children: [
          icono(context, 'Peces', 'home'),
          icono(context, 'Imagen', 'image'),
        ])
      ],
    );
  }

  Widget icono(BuildContext context, String cosas, String pantalla) {
    return Center(
        child: RaisedButton(
      onPressed: () => Navigator.pushNamed(context, pantalla),
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromRGBO(52, 32, 28, 1.0),
              Color.fromRGBO(99, 73, 68, 1.0),
              Color.fromRGBO(121, 74, 62, 1.0),
            ],
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Text(cosas, style: TextStyle(fontSize: 20)),
      ),
    ));
  }
}
