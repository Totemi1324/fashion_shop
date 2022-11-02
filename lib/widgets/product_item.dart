import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String imageUrl;

  const ProductItem(
    this.id, {
    required this.title,
    required this.price,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        header: GridTileBar(
          backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
          title: Text(
            "$price €",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {},
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {},
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
