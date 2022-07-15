import 'package:flutter/material.dart';
import 'package:fluttter_demo/pages/login_page.dart';

import 'pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // UI ka maamlaa
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/home',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),

      },
    );
  }
}
