import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:resturant_order_example/components/drawer_component.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text("H O M E"),
        ),
        drawer: ComponentDrawer(),
        body: Container(
          child: Text(dotenv.env["APPLICATION_MOD"]!),
        ),
      ),
    );
  }
}
