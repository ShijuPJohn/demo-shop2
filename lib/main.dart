import 'package:flutter/material.dart';
import 'package:shop2/screens/product_detail_screen.dart';
import 'package:shop2/screens/products_overview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.light().copyWith(
          secondary: Colors.deepOrange,
        ),
        fontFamily: 'Lato',
      ),
      home: const ProductsOverviewScreen(),
      routes: {
        ProductsOverviewScreen.id: (context) => const ProductsOverviewScreen(),
        ProductDetailScreen.id: (context)=> const ProductDetailScreen(),
      },
    );
  }
}
