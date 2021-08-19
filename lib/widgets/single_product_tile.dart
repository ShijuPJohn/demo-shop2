import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop2/models/product.dart';
import 'package:shop2/screens/product_detail_screen.dart';

class SingleProductTile extends StatelessWidget {
  const SingleProductTile({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.id, arguments: product);
        },
        child: GridTile(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            leading: IconButton(
              icon: Icon(
                Icons.favorite,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {},
            ),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
