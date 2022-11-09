import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import './screens/product_details_screen.dart';
import './providers/products_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
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
          "/": (_) => const ProductsOverviewScreen(),
          ProductDetailsScreen.routeName: (_) => const ProductDetailsScreen(),
        },
      ),
    );
  }
}