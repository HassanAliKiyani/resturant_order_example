import 'package:flutter/material.dart';

class ComponentTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isObscureText;
  final String hintText;

  const ComponentTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: TextField(
        controller: controller,
        obscureText: isObscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            hintText: hintText),
      ),
    );
  }
}
