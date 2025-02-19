import 'package:flutter/material.dart';
import 'package:module13_class1/ui/screens/update_product_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
          'https://m-cdn.phonearena.com/images/hub/372-wide-two_1200/Apple-iPhone-16-release-date-price-and-features.jpg?1727344233'),
      title: const Text('Product name'),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: #CODE'),
          Text('Quantity: 12'),
          Text('Price: 3456'),
          Text('Total Price: 23456789'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, UpdateProductScreen.name);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}