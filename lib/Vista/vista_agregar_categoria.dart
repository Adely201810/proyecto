import 'package:flutter/material.dart';
import 'package:proyecto/Controlador/controller_agegar_categoria.dart';
import 'package:proyecto/Controlador/controller_lista_categoria.dart';
import 'package:proyecto/Modelo/modelo_categoria.dart';
import 'package:proyecto/Vista/vista_menu.dart';

class AgregarC extends StatefulWidget {
  final List<Categoria> listaCategoriaController;
  const AgregarC({super.key, required this.listaCategoriaController});

  @override
  State<AgregarC> createState() => _AgregarCState();
}

class _AgregarCState extends State<AgregarC> {
  final AgregarCategoriaController agregarCategoriaController =
      AgregarCategoriaController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreCategoriaComtroller =
      TextEditingController();
  final ListaCategoriaController listaCategoriaController =
      ListaCategoriaController();
  bool isEditing = false;
  int editingIndex = -1;

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
          "Maya - Agregar Categoria",
          style: TextStyle(
              color: Color.fromRGBO(27, 2, 31, 0.782),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(152, 79, 226, 0.612),
      ),
      body: SingleChildScrollView(
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
                      controller: idController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "ID",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.account_balance_wallet_outlined,
                            size: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: nombreCategoriaComtroller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Nombre Categoria",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.draw_outlined, size: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.5, // Ajusta esto según tus necesidades
                child: ListView.builder(
                  itemCount:
                      listaCategoriaController.mostrarCategorias().length,
                  itemBuilder: (context, index) {
                    var categoria =
                        listaCategoriaController.mostrarCategorias()[index];
                    return ListTile(
                      leading: Text(categoria.id.toString()),
                      title: Text(categoria.nombreCategoria),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              var categoria = listaCategoriaController
                                  .mostrarCategorias()[index];
                              setState(() {
                                idController.text = categoria.id.toString();
                                nombreCategoriaComtroller.text =
                                    categoria.nombreCategoria;
                                isEditing = true;
                                editingIndex = index;
                              });
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              agregarCategoriaController
                                  .eliminarCategoria(index);
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
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
                  onPressed: () {
                    int id = int.parse(idController.text);
                    String nombreCategoria = nombreCategoriaComtroller.text;
                    agregarCategoriaController.agregarCategoria(
                        id, nombreCategoria);
                    // Acción para el botón "Guardar"
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
