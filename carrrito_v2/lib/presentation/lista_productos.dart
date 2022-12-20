class ListaProductos{
  final String nombre;
  final int precio;
  final String imageURL;
  final int id;
  final bool isAdd;
  int quantity = 0;

  ListaProductos({
    required this.nombre,
    required this.precio,
    required this.imageURL,
    required this.id,
    required this.isAdd,
  });
}