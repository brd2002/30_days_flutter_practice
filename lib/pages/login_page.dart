import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_practice/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome to app",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "enter your username",
                        labelText: "Username "),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "enter your username",
                        labelText: "Username "),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("hi bharat");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text("submit"),
                    style: TextButton.styleFrom(minimumSize: Size(300, 30)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
