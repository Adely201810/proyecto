import 'package:flutter/material.dart';
//import 'package:proyecto/Controlador/controller_editar_categoria.dart';
//import 'package:proyecto/Vista/vista_agregar_categoria.dart';

/*void main() {
  runApp(const VentanaGC());
}

class VentanaGC extends StatelessWidget {
  const VentanaGC({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "VentanaGC",
      home: GestionarC(),
      debugShowCheckedModeBanner: false,
    );
  }
}*/

class GestionarC extends StatefulWidget {
  const GestionarC({super.key});

  @override
  State<GestionarC> createState() => _GestionarCState();
}

class _GestionarCState extends State<GestionarC> {
  final TextEditingController controlador = TextEditingController();
  //final EditarCategoriaController editarCategoriaController = EditarCategoriaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AgregarC(
                            id: 1,
                            descripcionCategoria: '',
                          )));
            },
            icon: const Icon(Icons.arrow_back)),*/
        title: const Text(
          "Maya - Gestor Categorias",
          style: TextStyle(
              color: Color.fromRGBO(27, 2, 31, 0.782),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(152, 79, 226, 0.612),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 5.0)),
                    labelText: "Nombre Categoria",
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(133, 80, 133, 0.612),
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIcon: Icon(Icons.draw_outlined),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        color: const Color.fromRGBO(209, 103, 238, 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    
                    // Acción para el botón "Actualizar"
                  },
                  icon: const Icon(Icons.refresh, size: 40),
                  color: const Color.fromRGBO(27, 2, 31, 0.782),
                ),
                const Text(
                  "Actualizar",
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
