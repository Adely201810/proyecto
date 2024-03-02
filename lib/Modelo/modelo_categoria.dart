class Categoria {
  int id;
  String nombreCategoria;

  Categoria({
  required this.id, 
  required this.nombreCategoria,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombreProducto': nombreCategoria,
    };
  }

  // Getters
  int get getId => id;
  String get getDescripcionCategoria => nombreCategoria;

  // Setters
  set setId(int id) => this.id = id;
  set setDescripcionCategoria(String descripcionCategoria) => nombreCategoria = descripcionCategoria;
}
