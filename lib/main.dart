import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColorLight,
        // typographic
        textTheme: const TextTheme(
          headline5: TextStyle(color: kPrimaryColorLight),
          headline6: TextStyle(color: kPrimaryColorLight),
        )
      ),
      home: LoginScreen(),
    );
  }
}
