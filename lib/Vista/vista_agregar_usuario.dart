import 'package:flutter/material.dart';
import 'package:proyecto/Controlador/controller_agregar_usuario.dart';
import 'package:proyecto/Controlador/controller_lista_usuario.dart';
import 'package:proyecto/Modelo/modelo_producto.dart';
import 'package:proyecto/Vista/vista_menu.dart';
import 'package:proyecto/Vista/vista_gestionar_producto.dart';

/*void main() {
  runApp(const Agregar_Usuario());
}

class Agregar_Usuario extends StatelessWidget {
  const Agregar_Usuario({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Agregar_Categoria",
      home: AgregarU(listaProductoController: [],),
      debugShowCheckedModeBanner: false,
    );
  }
}*/

class AgregarU extends StatefulWidget {
  final List<Producto> listaProductoController;
  const AgregarU({Key? key, required this.listaProductoController}) : super(key: key);

  @override
  State<AgregarU> createState() => _AgregarPState();
}

class _AgregarPState extends State<AgregarU> {
  final AgregarUsuarioController agregarUsuarioController = AgregarUsuarioController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidosController = TextEditingController();
  final TextEditingController idusuarioController = TextEditingController();
  final TextEditingController contrasenaController = TextEditingController();
  final ListaUsuarioController listaUsuarioController = ListaUsuarioController();
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
          "Maya - Agregar Usuario",
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "ID",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.account_balance_wallet_outlined),
                      ),
                    ),
                  ),
                  SizedBox(
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
                      controller: nombreController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Nombre",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.account_box),
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
                      controller: apellidosController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Apellidos",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.people_rounded, size: 30),
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
                      controller: idusuarioController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Usuario",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        prefixIcon: Icon(Icons.person_sharp, size: 30),
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
                      controller: contrasenaController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Contraseña",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(133, 80, 133, 0.612),
                          fontWeight: FontWeight.bold,
                        ),
                        //prefixIcon: Icon(Icons.password_outlined, size: 30),
                        prefixIcon: Icon(Icons.lock, size: 30),
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
                      listaUsuarioController.mostrarUsuarios().length,
                  itemBuilder: (context, index) {
                    var usuario =
                        listaUsuarioController.mostrarUsuarios()[index];
                    return ListTile(
                      leading: Text(usuario.nombre),
                      title: Text(usuario.apellidos),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(usuario.idusuario),
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () {
                              var usuario = listaUsuarioController
                                  .mostrarUsuarios()[index];
                              setState(() {
                                nombreController.text = usuario.nombre.toString();
                                apellidosController.text = usuario.apellidos;
                                idusuarioController.text = usuario.idusuario;
                                isEditing = true;
                                editingIndex = index;
                              });
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              agregarUsuarioController
                                  .eliminarUsuario(index);
                              setState(() {});
                            },
                          ),
                        ],
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
                  onPressed: () {
                    String nombre = nombreController.text;
                      String apellidos = apellidosController.text;
                      String idusuario = idusuarioController.text;
                      String contrasena = contrasenaController.text;
                      agregarUsuarioController.agregarUsuario(
                        nombre, apellidos, idusuario, contrasena);
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
            const SizedBox(width: 50,),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Acción para el botón "Gestionar"
                    Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const VentanaGP()));
                  },
                  icon: const Icon(Icons.edit, size: 40),
                  color: const Color.fromRGBO(27, 2, 31, 0.782),
                ),
                const Text(
                  "Editar",
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
