import 'package:hive/hive.dart';
import 'package:proyecto/Modelo/modelo_usuario.dart';

class ListaUsuarioController {
  List<Usuario> mostrarUsuarios(){

    var usuarioss = Hive.box('usuarioss');
    List<Usuario> listaUsuarios = [];

    for(var usuario in usuarioss.values){
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