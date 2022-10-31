import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      "p1",
      title: "Pralinés Large",
      description:
          "Assortment of 24 premium pralinés with different non-alcoholic fillings",
      price: 39.99,
      imageUrl:
          "https://laderach.com/media/catalog/product/cache/0138abb1cd045ea962ef7970969ed197/1/0/10006249_T_S_22.jpg",
    ),
    Product(
      "p2",
      title: "Chocolate Reindeer",
      description:
          "Reindeer figurine made of finest Swiss milk chocolate. Isn't he cute!?",
      price: 16.99,
      imageUrl:
          "https://laderach.com/media/catalog/product/cache/0138abb1cd045ea962ef7970969ed197/1/0/10073784_T_S.jpg",
    ),
    Product(
      "p3",
      title: "Vegan Chocolate with Cashew",
      description:
          "Fragments of our patented milk-free chocolate containing whole cashew nuts for a special taste experience",
      price: 23.49,
      imageUrl:
          "https://laderach.com/media/catalog/product/cache/0138abb1cd045ea962ef7970969ed197/1/0/10097099_T_S.jpg",
    ),
    Product(
      "p4",
      title: "World Selection",
      description:
          "Collection of exotic chocolate samples with various cocoa content",
      price: 15.99,
      imageUrl:
          "https://laderach.com/media/catalog/product/cache/0138abb1cd045ea962ef7970969ed197/1/0/10092749_01_T_S.jpg",
    ),
    Product(
      "p5",
      title: "Gift Heart",
      description:
          "Heart-shaped chocolate with caramelized nuts, topped with an appealing (and delicious) \"Thank you\"-lettering",
      price: 28.49,
      imageUrl:
          "https://laderach.com/media/catalog/product/cache/0138abb1cd045ea962ef7970969ed197/1/0/10092392_01_T_S_1.jpg",
    ),
  ];

  ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
