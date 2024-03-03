import 'package:flutter/material.dart';
import 'package:proyecto/Controlador/controller_lista_venta.dart';
import 'package:proyecto/Controlador/controller_venta.dart';
//import 'package:proyecto/Controlador/controller_lista_venta.dart';
import 'package:proyecto/Modelo/modelo_venta.dart';
import 'package:proyecto/Vista/vista_menu.dart';

/*void main() {
  runApp(const VentanaC());
}

class VentanaC extends StatelessWidget {
  const VentanaC({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "VentanaC",
      home: Ventas(),
      debugShowCheckedModeBanner: false,
    );
  }
}*/

class Ventas extends StatefulWidget {
  final List<Venta> listaVentaController;
  const Ventas({super.key, required this.listaVentaController});

  @override
  State<Ventas> createState() => _VentasState();
}

class _VentasState extends State<Ventas> {
  final VentaController ventaController = VentaController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController nombreComtroller = TextEditingController();
  final TextEditingController cantidadComtroller = TextEditingController();
  final TextEditingController subtotalController = TextEditingController();
  final ListaVentaController listaVentaController = ListaVentaController();

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
          "Maya - Venta",
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
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Codigo Barras",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(133, 80, 133, 0.612),
                            fontWeight: FontWeight.bold)),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.qr_code_scanner,
                      size: 30,
                    ),
                    highlightColor: const Color.fromRGBO(190, 100, 232, 0.612),
                    //focusColor: Color.fromRGBO(52, 3, 85, 0.612),
                    hoverColor: const Color.fromRGBO(52, 3, 85, 0.612),
                    //splashColor: Color.fromRGBO(52, 3, 85, 0.612),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        labelText: "Nombre Producto",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(133, 80, 133, 0.612),
                            fontWeight: FontWeight.bold)),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    highlightColor: const Color.fromRGBO(190, 100, 232, 0.612),

                    hoverColor: const Color.fromRGBO(52, 3, 85, 0.612),
                    
                  ),
                ],
              ),
              const SizedBox(
                  height: 10,
                ),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        //controller: cantidadController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5.0)),
                          labelText: "Cantidad de Producto",
                          labelStyle: TextStyle(
                            color: Color.fromRGBO(133, 80, 133, 0.612),
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(Icons.forklift, size: 30),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                Center(       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                int id = int.parse(idController.text);
                      String nombre = nombreComtroller.text;
                      int cantidad = int.parse(cantidadComtroller.text);
                      double subtotal = double.parse(subtotalController.text);
                      ventaController.agregarVenta(
                          id, nombre, cantidad, subtotal);
                // Acción para el botón "Guardar"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(209, 103, 238, 100),
              ),
              icon: const Icon(Icons.save, size: 25, color: Colors.white),
              label: const Text(
                'Guardar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
                  ),
                
                /*SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.5, // Ajusta esto según tus necesidades
                child: ListView.builder( itemCount:
                      listaVentaController.mostrarVentas().length, itemBuilder: (context, index) {
                    var categoria = listaVentaController.mostrarVentas()[index];
                    return ListTile(
                      leading: Text(categoria.id.toString()),
                      title: Text(categoria.nombre),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),*/

              /*const SizedBox(
                height: 20,
              ),
              Container(
                child: const Center(
                  heightFactor: 17,
                  child: Text(
                    "Aqui va la lista de productos",
                  ),
                ),
              )*/
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromRGBO(209, 103, 238, 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_shopping_cart_rounded,
              size: 40,
              weight: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Suma = 00.00",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
