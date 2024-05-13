import 'package:flutter/material.dart';

class ComponetDrawerTile extends StatelessWidget {
  const ComponetDrawerTile(
      {super.key, required this.title, this.onTap, this.leadingIcon});
  final String title;
  final IconData? leadingIcon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          leadingIcon,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        onTap: onTap,
      ),
    );
  }
}
