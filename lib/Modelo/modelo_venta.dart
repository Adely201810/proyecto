import 'package:proyecto/Modelo/modelo_producto.dart';

class Venta {
  int id;
  Producto nombre;
  int cantidad;
  double subtotal;

  Venta({
  required this.id, 
  required this.nombre,
  required this.cantidad,
  required this.subtotal, 

});

  // Getters
  int get getId => id;
  Producto get getNombreProducto => nombre;
  int get getCantidad => cantidad;
  double get getPrecio => subtotal;

  // Setters
  set setId(int id) => this.id = id;
  set setNombreProducto(String nombreProducto) => nombre = nombre;
  set setCantidad(int cantidad) => this.cantidad = cantidad;
  set setPrecio(double precio) => subtotal = precio;

}