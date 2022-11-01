import 'package:flutter/material.dart';
import 'package:auth_firebase/authenticate/register.dart';
import 'package:auth_firebase/authenticate/login.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: SignIn(),
    // );
    if (showSignIn) {
      return Login(toggleView: toggleView);
    } else {
      return register(toggleView: toggleView);
    }
  }
}
