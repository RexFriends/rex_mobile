import 'package:flutter/material.dart';
import 'package:rex_mobile/components/RoundedButton.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SafeArea(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
          Column(
            children: [
              Image.asset('lib/assets/images/logo.png'),
              Text('shop together',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            ],
          ),
          RoundedButton('LOGIN', () {}),
          RoundedButton('Login with Facebook', () {},
              backgroundColor: Color.fromRGBO(64, 100, 172, 1.0),
              icon: Image.asset('lib/assets/images/facebook-logo.png',
                  height: 16, width: 16),
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900)),
          RoundedButton('Login with Google', () {},
              backgroundColor: Color.fromRGBO(221, 75, 57, 1.0),
              icon: Image.asset('lib/assets/images/google-logo.png',
                  height: 20, width: 20),
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900))
        ]))));
  }
}
