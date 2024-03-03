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

  void eliminarUsuario(int id) {
    var ventas = Hive.box('ventas');
    ventas.deleteAt(id);
  }

  Future<void> actualizarUsuario(
      int index, String nombre, String apellidos, String idusuario, String contrasena,) async {
    var ventas = Hive.box('ventas');
    var venta = ventas.getAt(index);
    if (venta != null) {
    venta['nombre'] = nombre;
    venta['apellidos'] = apellidos;
    venta['idusuario'] = idusuario;
    venta['contrasena'] = contrasena;
    await ventas.putAt(index, ventas);
    }
    }
  
}