import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '';

import '../widgets/product_item.dart';
import '../providers/products_provider.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products?>(context);
    final products = productsData?.items ?? [];

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (buildContext, index) => ChangeNotifierProvider(
        create: (buildContext) => products[index],
        child: ProductItem(),
      ),
      itemCount: products.length,
    );
  }
}