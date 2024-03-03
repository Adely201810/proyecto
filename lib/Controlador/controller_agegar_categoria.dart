import 'package:hive/hive.dart';

class AgregarCategoriaController {
void agregarCategoria(
  int id,
  String nombreCategoria,
  ){
    bool isValid = true;
    if (isValid) {
      var categorias = Hive.box('categorias');
      categorias.put(id, {'id': id, 'nombreCategoria': nombreCategoria});
    }
  }

  void eliminarCategoria(int id) {
    var categorias = Hive.box('categorias');
    categorias.deleteAt(id);
  }

  Future<void> actualizarCategoria(
      int index, int id, String nombreCategoria) async {
    var categorias = Hive.box('categorias');
    var categoria = categorias.getAt(index);
    if (categoria != null) {
      categoria['id'] = id;
      categoria['nombreCategoria'] = nombreCategoria;
      await categorias.putAt(index, categoria);
    }
  }

  List obtenerNombresCategorias() {
    var categorias = Hive.box('categorias');
    List<String> nombresCategorias = [];
    
    for (var i = 0; i < categorias.length; i++) {
      var categoria = categorias.getAt(i);
      nombresCategorias.add(categoria['nombreCategoria'] as String);
    }

    return nombresCategorias;
  }

}