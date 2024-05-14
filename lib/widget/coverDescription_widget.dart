import 'package:flutter/material.dart';

class CoverDescriptionWidget extends StatelessWidget {
  const CoverDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var fontStyle = TextStyle(color: Theme.of(context).colorScheme.primary);

    var fontStyleBold =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    return Container(
      padding: EdgeInsets.all(24.0),
      margin: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("\$1.22", style: fontStyleBold),
              Text(
                "Delivery fee",
                style: fontStyle,
              ),
            ],
          ),
          Column(
            children: [
              Text("30-45 min", style: fontStyleBold),
              Text("Delivery time", style: fontStyle),
            ],
          ),
        ],
      ),
    );
  }
}
