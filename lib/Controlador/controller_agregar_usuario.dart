import 'package:hive/hive.dart';

class AgregarUsuarioController {
  void agregarUsuario(

  String nombre,
  String apellidos,
  String idusuario,
  String contrasena,
  ) {
    bool isValid = true;
    if (isValid) {
      var usuarioss = Hive.box('usuarioss');
      usuarioss.put(nombre, {'nombre': nombre, 'apellidos': apellidos, 'idusuario': idusuario, 'contrasena':contrasena});
    }
  }

  void eliminarUsuario(int id) {
    var categorias = Hive.box('categorias');
    categorias.deleteAt(id);
  }

  Future<void> actualizarUsuario(
      int index, String nombre, String apellidos, String idusuario, String contrasena,) async {
    var categorias = Hive.box('categorias');
    var categoria = categorias.getAt(index);
    if (categoria != null) {
      categoria['nombre'] = nombre;
      categoria['apellidos'] = apellidos;
      categoria['idusuario'] = idusuario;
      categoria['contrasena'] = contrasena;
      await categorias.putAt(index, categoria);
    }
  }

}
