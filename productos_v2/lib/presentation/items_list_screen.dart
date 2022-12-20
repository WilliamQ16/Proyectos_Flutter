import 'package:flutter/material.dart';
import 'cart_screen.dart' show CartScreen;
import 'items_details_screen.dart' show ItemDetailsScreen;

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({super.key});

  State<ItemsListScreen> createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  String _selectedProduct = "";
  int _count = 0;
  List _names = [
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
        title: Text('Lista de Productos $_count'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
            icon: const Icon(Icons.shopping_cart),
            tooltip: ('Carrito de Compras'),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          onTap: () {
            setState(() => _selectedProduct = _names[index]);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ItemDetailsScreen(
                  number: index,
                  product: _selectedProduct,
                  key: ItemDetailsScreen.valueKey,
                ),
              ),
            );
          },
          leading: Image.asset(
            '../images/pic${index + 1}.jpg',
          ),
          title: Text(_names[index]),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        itemCount: 10,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Contador Incremental',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
