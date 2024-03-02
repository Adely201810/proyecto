import 'package:hive/hive.dart';
import 'package:proyecto/Modelo/modelo_venta.dart';

class ListaVentaController {
  List<Venta> mostrarVentas(){

    var ventas = Hive.box('ventas');
    List<Venta> listaVentas = [];

    for(var venta in ventas.values){
      listaVentas.add(Venta(
        id: venta['id'],
        nombre: venta['nombre'],
        cantidad: venta['cantidad'],
        subtotal: venta['subtotal'],
      ));
    }

    return listaVentas;
  }
}