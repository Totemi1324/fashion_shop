import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_details_screen.dart';
import '../providers/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final productItem = Provider.of<Product?>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        header: GridTileBar(
          backgroundColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.6),
          title: Text(
            productItem?.title ?? "[Not found]",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.6),
          title: Text(
            "${productItem?.price ?? 0} €",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              productItem == null
                  ? Icons.favorite
                  : (productItem.isFavourite
                      ? Icons.favorite
                      : Icons.favorite_border),
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () => productItem?.toggleFavouriteStatus(),
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
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(
                ProductDetailsScreen.routeName,
                arguments: productItem?.id),
            child: Image.network(
              productItem?.imageUrl ??
                  "https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png",
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
