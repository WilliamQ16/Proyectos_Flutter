import 'dart:html';
import 'package:flutter/material.dart';
import 'lista_productos.dart';
import '../constants.dart';

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;

  const Carrito(this._cart, {super.key});

  _CarritoState createState() => _CarritoState(this._cart);
}

class _CarritoState extends State<Carrito> {

  int _valueProc = 0;

  _CarritoState(this._cart);

  List<ListaProductos> _cart;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Detalles del producto',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.pink,
        ),
      ),
      drawer: myDrawer,
      body: GestureDetector(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _cart.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 9,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image(
                                  image: NetworkImage(
                                    _cart[index].imageURL.toString(),
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                          right: 8,
                                        ),
                                        child: Text(
                                          _cart[index].nombre.toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              new FloatingActionButton(
                                onPressed: () {
                                  _add(index);
                                  _valuefinal1(index);
                                },
                                child: new Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.redAccent,
                              ),
                              new Text(
                                '${_cart[index].quantity}',
                                style: new TextStyle(fontSize: 60.0),
                              ),
                              new FloatingActionButton(
                                onPressed: () {
                                  _minus(index);
                                  _valuefinal2(index);
                                },
                                child: new Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.redAccent,
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8,
                                          right: 8,
                                        ),
                                        child:
                                            Text(_valueProduct(index).toString(),
                                                style: TextStyle(
                                                  fontSize: 20,
                                                )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.redAccent,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "Compra Final",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(""),
                            Text(
                              "SubTotal: ${_valueProc}",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(""),
                            Text(
                              "IVA: ${_valueProc * 0.19}",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(""),
                            Text(
                              "Total: ${_valueProc + (_valueProc * 0.19)}",
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _add(index) {
    setState(() {
      _cart[index].quantity++;     
    });
  }

  _minus(index) {
    setState(() {
      _cart[index].quantity--;
    });
  }

  int _valueProduct(number){
    return _cart[number].precio * _cart[number].quantity;
  }

  _valuefinal1(index){
    _valueProc += _cart[index].precio;
  }

  _valuefinal2(index){
    _valueProc -= _cart[index].precio;
  }
}
