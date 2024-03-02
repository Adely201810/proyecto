import 'package:hive/hive.dart';

class AgregarProductoController {
  void agregarProducto(
    
  int codigoBarras,
  String nombreProducto,
  double precio,
  int cantidad,
  String categoria,
  ) {
    bool isValid = true;
    if (isValid) {
      var productos = Hive.box('productos');
      productos.put(codigoBarras, {'codigoBarras': codigoBarras, 'nombreProducto': nombreProducto, 'precio': precio, 'cantidad':cantidad, 'categoria': categoria});
    }
  }
  void eliminarProducto(int id) {
    var productos = Hive.box('productos');
    productos.deleteAt(id);
  }

  Future<void> actualizarProducto(
      int index, int id, String nombre, double precio, int cantidad, String categoria) async {
    var productos = Hive.box('productos');
    var producto = productos.getAt(index);
    if (producto != null) {
      producto['id'] = id;
      producto['nombre'] = nombre;
      producto['precio'] = precio;
      producto['cantidad'] = cantidad;
      producto['categoria'] = categoria;
      await productos.putAt(index, producto);
    }
  }

}