import 'package:flutter/material.dart';
import 'package:shop2/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static String id = 'product_detail_screen';

  const ProductDetailScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product =
    ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
