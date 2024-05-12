import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_order_example/components/button_component.dart';
import 'package:resturant_order_example/components/textfield_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //LockIcon
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 8,
          ),
          Text("Food Delivery App"),

          const SizedBox(
            height: 8,
          ),
          ComponentTextField(controller: emailController, hintText: "Email"),
          const SizedBox(
            height: 8,
          ),
          ComponentTextField(
            controller: passwordController,
            hintText: "Password",
            isObscureText: true,
          ),

          //Forgot password
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Forgot Passowrd?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 8,
          ),
          ComponentButton(
            buttonText: "Login",
            onTap: () {},
          ),
          //Register now

          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Not a memeber?"),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Register Now",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
