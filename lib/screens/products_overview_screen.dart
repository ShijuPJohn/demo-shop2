import 'package:flutter/material.dart';
import 'package:shop2/utils/common_data.dart';
import 'package:shop2/widgets/single_product_tile.dart';

class ProductsOverviewScreen extends StatefulWidget {
  static String id = 'products_overview_screen';

  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: GridView.builder(
        padding: const EdgeInsets.all(7),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return SingleProductTile(
            product: dummyData[index],
          );
        },
      ),
    );
  }
}
