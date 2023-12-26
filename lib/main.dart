import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_practice/pages/home_page.dart';
import 'package:flutter_30_days_ui_practice/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        // brightness: Brightness.dark,
      ),
      // home: HomePage(),
      routes: {
        "/": (context) => LoginPage(),
        "homepage": (context) => HomePage(),
        "loginpage": (context) => LoginPage(),
      },
    );
  }
}
