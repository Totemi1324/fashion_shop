import 'package:flutter/material.dart';

import './screens/products_overview_screen.dart';
import './screens/product_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoopifye',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.brown,
          accentColor: Colors.amber.shade100,
        ),
        fontFamily: "Lato",
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: "Arvo",
            fontSize: 22,
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => ProductsOverviewScreen(),
        ProductDetailsScreen.routeName: (_) => const ProductDetailsScreen(),
      },
    );
  }
}