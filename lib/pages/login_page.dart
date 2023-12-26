import 'package:flutter/material.dart';
import 'package:flutter_30_days_ui_practice/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
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
              "Welcome to $name",
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
                    onChanged: (val) {
                      name = val;
                      setState(() {});
                    },
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
                  InkWell(
                    onTap: () async {
                      
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton ? 50 : 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 6),
                      ),
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     print("hi bharat");
                  //     );
                  //   },
                  //   child: Text("submit"),
                  //   style: TextButton.styleFrom(minimumSize: Size(300, 30)),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
