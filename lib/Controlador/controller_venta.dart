import 'package:hive/hive.dart';

class VentaController {
void agregarVenta(
  int id,
  String nombre,
  int cantidad,
  double subtotal,

  ){
    bool isValid = true;
    if (isValid) {
      var ventas = Hive.box('ventas');
      ventas.put(id, {'id': id, 'nombre': nombre, 'cantidad': cantidad, 'subtotal': subtotal});
    }
  }
  
}