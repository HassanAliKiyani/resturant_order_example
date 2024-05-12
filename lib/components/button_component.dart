import 'package:flutter/material.dart';

class ComponentButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  final double width;

  const ComponentButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(24),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(24)),
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary),
        )),
      ),
    );
  }
}
