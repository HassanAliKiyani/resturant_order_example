import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyLocationWidget extends StatefulWidget {
  MyLocationWidget({super.key});

  @override
  State<MyLocationWidget> createState() => _MyLocationWidgetState();
}

class _MyLocationWidgetState extends State<MyLocationWidget> {
  String location = "Enter your location...";

  TextEditingController controller = TextEditingController(text: "");

  void openLocationBox(BuildContext context) async {
    String? userLocation = await showDialog<String>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, setState) {
            return AlertDialog(
              title: const Text("Your Loction"),
              content: TextField(
                controller: controller,
                decoration: InputDecoration(hintText: "Enter your location"),
              ),
              actions: [
                MaterialButton(
                  onPressed: () {
                    if (controller.text.isNotEmpty) {
                      setState(
                        () {
                          location = controller.text;
                        },
                      );
                      Navigator.pop(context, controller.text);
                    }
                  },
                  child: const Text(" Save"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop("");
                  },
                  child: const Text(" Cancel"),
                )
              ],
            );
          },
        );
      },
    );
    if (userLocation != null) {
      setState(() {
        location = userLocation;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontStyle: FontStyle.italic),
          ),
          GestureDetector(
            onTap: () {
              openLocationBox(context);
            },
            child: Row(
              children: [
                Text(
                  location,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
