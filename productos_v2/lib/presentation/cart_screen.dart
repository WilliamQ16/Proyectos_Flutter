import 'package:flutter/material.dart';
import 'items_details_screen.dart' show ItemDetailsScreen;

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static List _names = [
    'SAMSUNG Galaxy A23 128GB',
    'VIVO Y20 64GB AZUL',
    'SAMSUNG Galaxy S21 FE 256GB 5G',
    'XIAOMI 12 8GB 256GB Gris',
    'Apple iphone 12 6.1 Pulg 64 GB 4 GB Ram',
    'Samsung Z Flip4 5G 8/256 GB + Buds 2 Gris',
    'Motorola Edge 30 Pro',
    'Xiaomi 12 Lite 128GB + Band',
    'Huawei Nova 9 8/128 GB',
    'Xiaomi Redmi Note 11 Pro 5G 6/128 GB'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de Compras'),
      ),
      body: ListView.separated(
        itemBuilder: (_, int index) => ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ItemDetailsScreen(
                  product: _names[index],
                  number: index,
                ),
              ),
            );
          },
          title: Text(_names[index]),
          trailing: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(' ${index + 1} '),
          ),
        ),
        separatorBuilder: (ctx, idx) => const Divider(),
        itemCount: 3,
      ),
    );
  }
}
