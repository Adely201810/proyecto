import 'package:flutter/material.dart';

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
        elevation: 0,
        title: const Text(
          "Maya - Gestor Producto",
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
            const Row(
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
                /*IconButton(
                onPressed: (){}, icon: const Icon(Icons.qr_code_scanner, size: 30,),
                highlightColor: const Color.fromRGBO(190, 100, 232, 0.612),
                //focusColor: Color.fromRGBO(52, 3, 85, 0.612),
                hoverColor: const Color.fromRGBO(52, 3, 85, 0.612),
                //splashColor: Color.fromRGBO(52, 3, 85, 0.612),
                )*/
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
                /*IconButton(
                onPressed: (){}, icon: Icon(Icons.search, size: 30,),
                highlightColor: Color.fromRGBO(190, 100, 232, 0.612),
                //focusColor: Color.fromRGBO(52, 3, 85, 0.612),
                hoverColor: Color.fromRGBO(52, 3, 85, 0.612),
                //splashColor: Color.fromRGBO(52, 3, 85, 0.612),
                ),  */
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
                /* IconButton(
                onPressed: (){}, icon: Icon(Icons.forklift, size: 30,),
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
                /* IconButton(
                onPressed: (){}, icon: Icon(Icons.attach_money_rounded, size: 30,),
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
            const Row(
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
                /* IconButton(
                onPressed: (){}, icon: Icon(Icons.category_rounded, size: 30,),
                highlightColor: Color.fromRGBO(190, 100, 232, 0.612),
                //focusColor: Color.fromRGBO(52, 3, 85, 0.612),
                hoverColor: Color.fromRGBO(52, 3, 85, 0.612),
                //splashColor: Color.fromRGBO(52, 3, 85, 0.612),
                ),*/
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              child: const Center(
                heightFactor: 5,
                child: Text(
                  "Aqui va la lista de productos",
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomAppBar(
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
                  ),
                  const Text(
                    "Actualizar",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                  ),
                  const Text(
                    "Guardar",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                  ),
                  const Text(
                    "Eliminar",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
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
