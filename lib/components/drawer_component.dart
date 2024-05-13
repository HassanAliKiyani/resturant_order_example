import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resturant_order_example/Providers/ThemeProvider.dart';
import 'package:resturant_order_example/components/drawer_tile_component.dart';
import 'package:resturant_order_example/pages/Settings.dart';
import 'package:resturant_order_example/pages/auth/LoginOrSignup.dart';

class ComponentDrawer extends StatefulWidget {
  const ComponentDrawer({super.key});

  @override
  State<ComponentDrawer> createState() => _ComponentDrawerState();
}

class _ComponentDrawerState extends State<ComponentDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ConstrainedBox(
                //   constraints: const BoxConstraints(
                //     maxHeight: 100,
                //     maxWidth: 100,
                //   ),
                //   child: AspectRatio(
                //     aspectRatio: 1,
                //     child: Image.asset(
                //       Provider.of<ThemeProvider>(context, listen: false).isDark
                //           ? "lib/images/WhiteLogo.png"
                //           : "lib/images/BlackLogo.png",
                //       fit: BoxFit.contain,
                //     ),
                //     // child: Lottie.asset("lib/images/dollarsymbol.json"),
                //   ),
                // ),
                Icon(
                  Icons.food_bank_rounded,
                  size: 100,
                ),
                const Text("Food Order"),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ComponetDrawerTile(
            title: "H O M E",
            leadingIcon: Icons.home_filled,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ComponetDrawerTile(
            title: "S E T T I N G S",
            leadingIcon: Icons.settings,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
          const Spacer(),
          ComponetDrawerTile(
            title: "L O G O U T",
            leadingIcon: Icons.logout,
            onTap: () {
              //Make Logut Logic

              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginOrSignup()));
            },
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
