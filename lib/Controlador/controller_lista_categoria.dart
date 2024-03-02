import 'package:hive/hive.dart';
import 'package:proyecto/Modelo/modelo_categoria.dart';

class ListaCategoriaController {
  List<Categoria> mostrarCategorias(){

    var categorias = Hive.box('categorias');
    List<Categoria> listaCategorias = [];

    for(var categoria in categorias.values){
      listaCategorias.add(Categoria(
        id: categoria['id'],
        nombreCategoria: categoria['nombreCategoria'],
      ));
    }

    return listaCategorias;
  }
}
