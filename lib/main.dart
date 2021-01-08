import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/splash.dart';
import 'package:disenos/src/pages/list.dart';
import 'package:disenos/src/pages/video.dart';
import 'package:disenos/src/pages/login.dart';
import 'package:disenos/src/pages/image.dart';
import 'package:disenos/src/pages/home_page.dart';
import 'package:disenos/src/ui/sqlite.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'splash',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
        'splash': (BuildContext context) => MyHomePage(),
        'list': (BuildContext context) => Lista(),
        'video': (BuildContext context) => VideoApp(),
        'login': (BuildContext context) => Login(),
        'image': (BuildContext context) => Imagen(),
        'home': (BuildContext context) => HomePage(),
        'sqlite': (BuildContext context) => Sqlite(),
      },
    );
  }
}
