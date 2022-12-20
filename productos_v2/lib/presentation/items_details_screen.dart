import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const valueKey = ValueKey('ItemDetailScreen');

  final String product;

  final int number;

  const ItemDetailsScreen(
      {Key? key, required this.product, required this.number})
      : super(key: key);

  static List precios = [
    'Cop: 600.000',
    'Cop: 720.000',
    'Cop: 800.000',
    'Cop: 950.000',
    'Cop: 540.000',
    'Cop: 220.000',
    'Cop: 950.000',
    'Cop: 340.000',
    'Cop: 460.000',
    'Cop: 1000.000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Producto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('../images/pic${number + 1}.jpg'),
          Center(
            child: Text(
              product,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Text('Detalles de $product'),
          Center(
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")),
          Center(
            child: Text(precios[number], style: Theme.of(context).textTheme.headline3,),
          ),
          Divider(),
          Center(
            child: Text('Unidades:', style: Theme.of(context).textTheme.headline4,),
          ),
          Center(
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
