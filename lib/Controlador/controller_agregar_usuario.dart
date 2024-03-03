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
      var usuarios = Hive.box('usuarios');
      usuarios.put(nombre, {'nombre': nombre, 'apellidos': apellidos, 'idusuario': idusuario, 'contrasena':contrasena});
    }
  }

  void eliminarUsuario(int id) {
    var usuarios = Hive.box('usuarios');
    usuarios.deleteAt(id);
  }

  Future<void> actualizarUsuario(
      int index, String nombre, String apellidos, String idusuario, String contrasena,) async {
    var usuarios = Hive.box('usuarios');
    var usuario = usuarios.getAt(index);
    if (usuario != null) {
    usuario['nombre'] = nombre;
    usuario['apellidos'] = apellidos;
    usuario['idusuario'] = idusuario;
    usuario['contrasena'] = contrasena;
    await usuarios.putAt(index, usuarios);
    }
    }

}
