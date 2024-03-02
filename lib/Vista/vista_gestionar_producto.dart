import 'package:flutter/material.dart';
//import 'package:proyecto/Vista/vista_agregar_producto.dart';

void main() {
  runApp(const VentanaGP());
}

class VentanaGP extends StatelessWidget {
  const VentanaGP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "VentanaGP",
      home: GestionarP(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GestionarP extends StatefulWidget {
  const GestionarP({super.key});

  @override
  State<GestionarP> createState() => _GestionarPState();
}

class _GestionarPState extends State<GestionarP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Agregar_Producto()));
            },
            icon: const Icon(Icons.arrow_back)),*/
        elevation: 0,
        title: const Text(
          "Maya - Editar Producto",
          style: TextStyle(
              color: Color.fromRGBO(27, 2, 31, 0.782),
              fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 50,
        backgroundColor: const Color.fromRGBO(152, 79, 226, 0.612),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            /*const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0)),
                      labelText: "Codigo Barras",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(133, 80, 133, 0.612),
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(Icons.qr_code_scanner),
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
            ),*/
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0)),
                      labelText: "Nombre Producto",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(133, 80, 133, 0.612),
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(Icons.search),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0)),
                      labelText: "Cantidad de Producto",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(133, 80, 133, 0.612),
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(Icons.forklift),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0)),
                      labelText: "Precio del Producto",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(133, 80, 133, 0.612),
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(Icons.attach_money_rounded),
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
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      items: <String>[
                        'lacteos',
                        'refrescos',
                        'ceriales',
                        'carnes frias',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String) {},
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
              ),
            /*const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0)),
                      labelText: "Categoria",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(133, 80, 133, 0.612),
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(Icons.category_rounded),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),*/
            const SizedBox(
              height: 5,
            ),
            /*Container(
              child: const Center(
                heightFactor: 5,
                child: Text(
                  "Aqui va la lista de productos",
                ),
              ),
            )*/
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
            /*Column(
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
            ),*/
          ],
        ),
      ),
      /*bottomNavigationBar: const BottomAppBar(
  child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.save, size: 40, weight: 50,),
          SizedBox(width: 20,),
          Text("Guardar", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.delete, size: 40, weight: 50,),
          SizedBox(width: 20,),
          Text("Eliminar", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
        ],
      ),
      ),*/
    );
  }
}
