class Usuario {
  String nombre;
  String apellidos;
  String idusuario;
  String contrasena;

  Usuario({
    required this.nombre,
    required this.apellidos,
    required this.idusuario,
    required this.contrasena,
  });

  // Getters
  String get getNombre => nombre;
  String get getApellidos => apellidos;
  String get getIdusuario => idusuario;
  String get getContrasena => contrasena;

  // Setters
  set setNombre(String nombre) => this.nombre = nombre;
  set setApellidos(String apellidos) => this.apellidos = apellidos;
  set setIdusuario(String idusuario) => this.idusuario = idusuario;
  set setContrasena(String contrasena) => this.contrasena = contrasena;
}
