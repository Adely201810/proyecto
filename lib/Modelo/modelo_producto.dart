
class Producto {
  int codigoBarras;
  String nombreProducto;
  double precio;
  int cantidad;
  String categoria;

  Producto({
    required this.codigoBarras,
    required this.nombreProducto,
    required this.precio,
    required this.cantidad,
    required this.categoria,
  });

  Map<String, dynamic> toMap() {
    return {
      'codigoBarras': codigoBarras,
      'nombreProducto': nombreProducto,
      'precio': precio,
      'stock': cantidad,
      'categoria': categoria,
    };
  }

  int get getCodigoBarras => codigoBarras;
  String get getNombreProducto => nombreProducto;
  double get getPrecio => precio;
  int get getCantidad => cantidad;
  String get getCategoria => categoria;

  set setCodigoBarras(int codigoBarras) => this.codigoBarras = codigoBarras;
  set setNombreProducto(String nombreProducto) => this.nombreProducto = nombreProducto;
  set setPrecio(double precio) => this.precio = precio;
  set setCantidad(int cantidad) => this.cantidad = cantidad;
  set setCategoria(String categoria) => this.categoria = categoria;
}