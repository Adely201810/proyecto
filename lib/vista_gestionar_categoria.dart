import 'package:flutter/material.dart';

void main() {
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
}

class GestionarC extends StatefulWidget {
  const GestionarC({super.key});

  @override
  State<GestionarC> createState() => _GestionarCState();
}

class _GestionarCState extends State<GestionarC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Maya - Gestor Categorias",
          style: TextStyle(
              color: Color.fromRGBO(27, 2, 31, 0.782),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(152, 79, 226, 0.612),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0)),
                      labelText: "Descripcion Categoria",
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
                /*IconButton(
                onPressed: (){}, icon: Icon(Icons.draw_outlined, size: 30,),
                highlightColor: Color.fromRGBO(190, 100, 232, 0.612),
                //focusColor: Color.fromRGBO(52, 3, 85, 0.612),
                hoverColor: Color.fromRGBO(52, 3, 85, 0.612),
                //splashColor: Color.fromRGBO(52, 3, 85, 0.612),
                ),*/
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: const Center(
                heightFactor: 17,
                child: Text(
                  "Aqui va la lista de Categorias",
                ),
              ),
            ),
          ],
        ),
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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Acción para el botón "Eliminar"
                  },
                  icon: const Icon(Icons.delete, size: 40),
                  color: const Color.fromRGBO(27, 2, 31, 0.782),
                ),
                const Text(
                  "Eliminar",
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
      /*
    bottomNavigationBar: BottomAppBar(
      color: Color.fromRGBO(209, 103, 238, 100),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_shopping_cart_rounded, size: 40, weight: 50,),
          SizedBox(width: 20,),
          Text("Suma = 00.00", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
        ],
      ),
    ),*/
    );
  }
}
