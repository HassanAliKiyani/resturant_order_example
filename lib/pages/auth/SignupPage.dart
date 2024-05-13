import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_order_example/components/button_component.dart';
import 'package:resturant_order_example/components/textfield_component.dart';

class Signup extends StatefulWidget {
  Signup({super.key, required this.onTap});
  Function()? onTap;

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  TextEditingController confirmPasswordController =
      TextEditingController(text: "");

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
          Text("Let create your account!"),
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
          const SizedBox(
            height: 8,
          ),
          ComponentTextField(
            controller: confirmPasswordController,
            hintText: "ConfirmPassword",
            isObscureText: true,
          ),

          const SizedBox(
            height: 8,
          ),
          ComponentButton(
            buttonText: "Sign Up",
            onTap: () {},
          ),
          //Register now

          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already a member?"),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: const Text(
                  "Login now",
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
