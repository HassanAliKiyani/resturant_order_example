import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:resturant_order_example/Providers/MultiproviderList.dart';
import 'package:resturant_order_example/Providers/ThemeProvider.dart';
import 'package:resturant_order_example/pages/Home.dart';
import 'package:provider/provider.dart';
import 'package:resturant_order_example/pages/auth/LoginOrSignup.dart';

void main() async {
  await dotenv.load(fileName: "assets/config.env");

  runApp(
    MultiProvider(providers: providers, child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrSignup(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
