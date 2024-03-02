import 'package:flutter/material.dart';
import 'package:proyecto/Controlador/controller_agegar_categoria.dart';
import 'package:proyecto/Controlador/controller_agregar_producro.dart';
import 'package:proyecto/Controlador/controller_lista_productos.dart';
import 'package:proyecto/Modelo/modelo_producto.dart';
import 'package:proyecto/Vista/vista_menu.dart';
//import 'package:proyecto/Vista/vista_gestionar_producto.dart';

class AgregarP extends StatefulWidget {
  final List<Producto> listaProductoController;
  const AgregarP({Key? key, required this.listaProductoController}) : super(key: key);

  @override
  State<AgregarP> createState() => _AgregarPState();
}

class _AgregarPState extends State<AgregarP> {
  final AgregarProductoController agregarProductoController = AgregarProductoController();
  final TextEditingController codigoBarrasController = TextEditingController();
  final TextEditingController nombreProductoController = TextEditingController();
  final TextEditingController precioController = TextEditingController();
  final TextEditingController cantidadController = TextEditingController();
  final ListaProductoController listaProductoController = ListaProductoController();
  final AgregarCategoriaController agregarCategoriaController = AgregarCategoriaController();
  String categoriaSeleccionado = '';
  bool isEditing = false;
  int editingIndex = -1;

  @override
  /*void initState() {
    super.initState();
    List<dynamic> categorias = agregarCategoriaController.obtenerNombresCategorias();
    if (categorias.isNotEmpty) {
      categoriaSeleccionado = categorias[0];
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const VistaMenu()));
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Maya - Agregar Producto",
          style: TextStyle(
              color: Color.fromRGBO(27, 2, 31, 0.782),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(152, 79, 226, 0.612),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: nombreProductoController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Nombre Producto",
                        enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 2)),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.edit_square),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: codigoBarrasController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Codigo Barras",
                        enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 2)),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.qr_code_scanner, size: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: cantidadController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Cantidad de Producto",
                        enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 2)),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.forklift, size: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: precioController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Precio del Producto",
                        enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide(width: 2)),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.attach_money_rounded, size: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              
              const SizedBox(
                height: 25,
              ),
              /*Row(
                  children: [
                    Expanded(
                      child: DropdownButton<String>(
                        value: categoriaSeleccionado,
                      items: agregarCategoriaController
                          .obtenerNombresCategorias()
                          .map((dynamic value) {
                        return DropdownMenuItem<dynamic>(
                          value: value,
                          child: Text(value),
                        );
                        }).toList(),
                      onChanged: (value) {
                        setState(() {
                          categoriaSeleccionado = value;
                        });
                      },
                        hint: const Text(
                          'Selecciona un Categoria',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        icon: const Icon(
                          Icons.category_rounded,
                          size: 30,
                          color: Color.fromARGB(221, 185, 90, 233),
                        ),
                        underline: Container(
                          height: 2,
                          color: const Color.fromARGB(255, 83, 45, 95),
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    )
                  ],
                ),*/
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.5, // Ajusta esto según tus necesidades
                  child: ListView.builder(
                    itemCount: listaProductoController.mostrarProductos().length,
                    itemBuilder: (context, index) {
                      var producto = listaProductoController.mostrarProductos()[index];
                      return ListTile(
                        leading: Text(producto.codigoBarras.toString()),
                        title: Text(producto.nombreProducto),
                        subtitle: Text(producto.precio.toString()),
                       trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(producto.cantidad.toString()),
                    const SizedBox(width: 50,),
                    IconButton(
                      icon: const Icon(
                        Icons.edit,
                      ),
                      onPressed: () {
                        var producto =
                                  listaProductoController.mostrarProductos()[index];
                              setState(() {
                                codigoBarrasController.text = producto.codigoBarras.toString();
                                nombreProductoController.text = producto.nombreProducto;
                                precioController.text = producto.precio.toString();
                                cantidadController.text = producto.cantidad.toString();
                                categoriaSeleccionado = producto.categoria;
                                isEditing = true;
                                editingIndex = index;
                              });
                            },
                        /*Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const VentanaGP()));*/
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.delete,
                      ),
                      onPressed: () {
                        agregarProductoController.eliminarProducto(index);
                              setState(() {});                        
                      },
                    ),
                  ]
                    ),
      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromRGBO(209, 103, 238, 100),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async {
                      int codigoBarras = int.parse(codigoBarrasController.text);
                      String nombreProducto = nombreProductoController.text;
                      double precio = double.parse(precioController.text);
                      int cantidad = int.parse(cantidadController.text);
                      if (isEditing) {
                       await agregarProductoController.actualizarProducto(
                            editingIndex, codigoBarras, nombreProducto, precio, cantidad, categoriaSeleccionado);
                        isEditing = false;
                        editingIndex = -1;
                      } else {
                      agregarProductoController.agregarProducto(
                          codigoBarras, nombreProducto, precio, cantidad, categoriaSeleccionado);
                      }
                      codigoBarrasController.clear();
                      nombreProductoController.clear();
                      precioController.clear();
                      cantidadController.clear();
                      setState(() {});
                    },
                  icon: const Icon(Icons.save, size: 40),
                  color: const Color.fromRGBO(27, 2, 31, 0.782),
                ),
                const Text(
                  "Guardar",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(27, 2, 31, 0.782),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
