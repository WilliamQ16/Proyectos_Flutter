import 'package:flutter/material.dart';
import '../constants.dart';
import 'shopping_cart.dart' show Carrito;

import 'lista_productos.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  List<ListaProductos> _productosModel = <ListaProductos>[];

  final List<ListaProductos> _listaCarro = <ListaProductos>[];

  void initState() {
    super.initState();
    _productos();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Productos '),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  const Icon(
                    Icons.shopping_cart,
                    size: 38,
                  ),
                  if (_listaCarro.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(
                          _listaCarro.length.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.0),
                        ),
                      ),
                    ),
                ],
              ),
              onTap: (() {
                if (_listaCarro.isNotEmpty) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Carrito(_listaCarro),
                    ),
                  );
                }
              }),
            ),
          ),
        ],
      ),
      drawer: myDrawer,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: _productosModel.length,
        itemBuilder: (context, index) {
          var item = _productosModel[index];
          return _cards(index, item);
        },
      ),
    );
  }

  Widget _cards(number1, number2) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              child: Image(
                image: NetworkImage(
                  _productosModel[number1].imageURL.toString(),
                ),
                width: 15,
                height: 15,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                          ),
                          child: Text(
                            _productosModel[number1].nombre.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                          ),
                          child:
                              Text(_productosModel[number1].precio.toString()),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (!_listaCarro.contains(number2)) {
                        _listaCarro.add(number2);
                      } else {
                        _listaCarro.remove(number2);
                      }
                    });
                  },
                  icon: (!_listaCarro.contains(number2)
                      ? const Icon(Icons.shopping_cart)
                      : const Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.green,
                        )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _productos() {
    var List = <ListaProductos>[
      ListaProductos(
        nombre: 'Pizza familiar 3 carnes',
        precio: 40000,
        imageURL: 'img/pizza.png',
        id: 1,
        isAdd: false,
      ),
      ListaProductos(
        nombre: 'Hamburguesa',
        precio: 16500,
        imageURL: 'img/hamburguesa.jpg',
        id: 2,
        isAdd: false,
      ),
      ListaProductos(
        nombre: 'Salchipapas',
        precio: 11750,
        imageURL: 'img/salchipapa.jpg',
        id: 3,
        isAdd: false,
      ),
    ];
    setState(() {
      _productosModel = List;
    });
  }
}
