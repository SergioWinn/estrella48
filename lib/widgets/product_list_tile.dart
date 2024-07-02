import 'package:flutter/material.dart';
import 'package:estrella48/models/product.dart';
import 'package:estrella48/screens/product_detail_screen.dart';

class ProductListTile extends StatelessWidget {
  final Product product;

  ProductListTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.description),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
    );
  }
}
