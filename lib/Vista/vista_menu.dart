import 'package:flutter/material.dart';
import 'package:proyecto/Modelo/modelo_usuario.dart';
import 'package:proyecto/Modelo/modelo_producto.dart';
import 'package:proyecto/Modelo/modelo_categoria.dart';
import 'package:proyecto/Modelo/modelo_venta.dart';
import 'package:proyecto/Vista/vista_agregar_producto.dart';
import 'package:proyecto/Vista/vista_agregar_usuario.dart';
import 'package:proyecto/Vista/vista_agregar_categoria.dart';
import 'package:proyecto/Vista/main.dart';
import 'package:proyecto/Vista/vista_inicio.dart';


void main() {
  runApp(const VistaMenu());
}

class VistaMenu extends StatelessWidget {
  const VistaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Menu",
      home: Menu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<Producto> productos = [];
  final List<Categoria> categorias = [];
  final List<Venta> ventas = [];
  final List<Usuario> usuarios = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "MENÚ",
          style: TextStyle(
              fontSize: 25.0,
              color: Color.fromRGBO(27, 2, 31, 0.782),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(152, 79, 226, 0.612),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push( context,
                    MaterialPageRoute( builder: (context) => AgregarU (listaUsuarioController: usuarios, )));
                // Acción para el botón "Usuarios"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(209, 103, 238, 100),
              ),
              icon: const Icon(Icons.people_alt_rounded, size: 25, color: Colors.white),
              label: const Text(
                'Usuarios',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute( builder: (context) => AgregarP( listaProductoController: productos, )));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(209, 103, 238, 100),
              ),
              icon: const Icon(Icons.pages, size: 25, color: Colors.white),
              label: const Text(
                'Productos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push( context,
                    MaterialPageRoute( builder: (context) => AgregarC (listaCategoriaController: categorias,)));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(209, 103, 238, 100),
              ),
              icon: const Icon(Icons.category, size: 25, color: Colors.white),
              label: const Text(
                'Categorías',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push( context,
                    MaterialPageRoute( builder: (context) => Ventas (listaVentaController: ventas, )));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(209, 103, 238, 100),
              ),
              icon: const Icon(Icons.shopping_cart_rounded, size: 25, color: Colors.white),
              label: const Text(
                'Ventas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push( context,
                    MaterialPageRoute( builder: (context) => const VistaInicio()));
                // Acción para el botón "Cerrar Sesión"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(209, 103, 238, 100),
              ),
              icon: const Icon(Icons.people_alt_rounded, size: 25, color: Colors.white),
              label: const Text(
                'Cerrar Sesión',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
