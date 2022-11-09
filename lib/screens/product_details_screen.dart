import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = "/product_details";

  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as String?;
    final loadedProduct = Provider.of<Products?>(context, listen: false)?.findById(args);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct?.title ?? "Oops..."),
      ),
    );
  }
}