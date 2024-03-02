import 'package:hive/hive.dart';
import 'package:proyecto/Modelo/modelo_producto.dart';

class ListaProductoController {
  List<Producto> mostrarProductos(){

    var productos = Hive.box('productos');
    List<Producto> listaProductos = [];

    for(var producto in productos.values){
      listaProductos.add(Producto(
        codigoBarras: producto['codigoBarras'],
        nombreProducto: producto['nombreProducto'],
        precio: (producto['precio']),
        cantidad:  (producto['cantidad']),
        categoria: (producto['categoria']),
      ));
    }

    return listaProductos;
  }
}