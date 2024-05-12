import 'package:provider/provider.dart';
import 'package:resturant_order_example/Providers/ThemeProvider.dart';

final List<ChangeNotifierProvider> providers = [
  ChangeNotifierProvider<ThemeProvider>(
    create: (context) => ThemeProvider(),
  ),
];
