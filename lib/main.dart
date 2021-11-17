import 'package:flutter/material.dart';
import 'package:sorenaprofile/screan/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dividerColor = Colors.white12;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SorenaProfile',
      theme: ThemeData(
          dividerColor: dividerColor,
          appBarTheme: AppBarTheme(color: (Colors.black)),
          textTheme: TextTheme(
              bodyText1: TextStyle(
                  fontFamily: 'english', color: Colors.white70, fontSize: 16),
              subtitle1: TextStyle(
                fontFamily: 'english',
                color: Colors.blue,
              ),
              subtitle2: TextStyle(
                  color: Colors.white70,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30)),
      home: ProfilePage(),
    );
  }
}
