import 'package:flutter/cupertino.dart';
import 'package:resturant_order_example/pages/auth/LoginPage.dart';
import 'package:resturant_order_example/pages/auth/SignupPage.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  bool _isLogin = true;

  void _toggleLogin() {
    setState(() {
      _isLogin = !_isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLogin
        ? LoginPage(onTap: _toggleLogin)
        : Signup(onTap: _toggleLogin);
  }
}
