import 'package:flutter/material.dart';

void main() {
  runApp(const Agregar_Categoria());
}

class Agregar_Categoria extends StatelessWidget {
  const Agregar_Categoria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Agregar_Categoria",
      home: AgregarC(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AgregarC extends StatefulWidget {
  const AgregarC({super.key});

  @override
  State<AgregarC> createState() => _AgregarCState();
}

class _AgregarCState extends State<AgregarC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Maya - Agregar Categoria",
          style: TextStyle(
              color: Color.fromRGBO(27, 2, 31, 0.782),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(152, 79, 226, 0.612),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
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
                      prefixIcon:
                          Icon(Icons.account_balance_wallet_outlined, size: 30),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                /*IconButton(
                onPressed: (){}, icon: Icon(Icons.account_balance_wallet_outlined, size: 30,),
                highlightColor: Color.fromRGBO(190, 100, 232, 0.612),
                //focusColor: Color.fromRGBO(52, 3, 85, 0.612),
                hoverColor: Color.fromRGBO(52, 3, 85, 0.612),
                //splashColor: Color.fromRGBO(52, 3, 85, 0.612),
                ),  */
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
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
                      prefixIcon: Icon(Icons.draw_outlined, size: 30),
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
            SizedBox(
              height: 20,
            ),

            /*Container(
            child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                    ),
                    child: const Icon(
                      Icons.forklift,
                      color: Color.fromARGB(255, 179, 57, 249),
                    ),
                  ),
                  ),
            ),
          )*/

            /* Container(child: 
        Center(
          heightFactor: 17,
          child: 
          Text("Aqui va la lista de productos", 
        ),
          ),
          )*/
          ],
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
      /*bottomNavigationBar: BottomAppBar(
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
