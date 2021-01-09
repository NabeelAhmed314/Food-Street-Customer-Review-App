import 'package:flutter/material.dart';
import 'package:food_street_533/src/ui/pages/Dashboard_page.dart';

import 'Feedback_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(style: FlutterLogoStyle.horizontal, size: 150,),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: "Username"),
                      controller: _usernameController,
                      validator: (value) {
                        return value.isEmpty
                            ? "Enter your username!"
                            : null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Password"),
                      controller: _passwordController,
                      validator: (value) {
                        return value.isEmpty
                            ? "Enter password!"
                            : null;
                      },
                    ),
                    ElevatedButton(
                      child: Text("Login"),
                      onPressed: () {
                        if(_usernameController.text.isNotEmpty && _usernameController.text == "admin")
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardPage(),));
                        else if(_usernameController.text.isNotEmpty && _usernameController.text == "user")
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FeedbackPage(),));
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
