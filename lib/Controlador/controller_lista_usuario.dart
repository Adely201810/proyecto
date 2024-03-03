import 'package:hive/hive.dart';
import 'package:proyecto/Modelo/modelo_usuario.dart';

class ListaUsuarioController {
  List<Usuario> mostrarUsuarios(){

    var usuarios = Hive.box('usuarios');
    List<Usuario> listaUsuarios = [];

    for(var usuario in usuarios.values){
      listaUsuarios.add(Usuario(
        nombre: usuario['nombre'],
        apellidos: usuario['apellidos'],
        idusuario: (usuario['idusuario']),
        contrasena:  (usuario['contrasena']),
      ));
    }

    return listaUsuarios;
  }
}