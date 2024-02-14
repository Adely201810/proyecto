import 'package:flutter/material.dart';
void main(){
  runApp(const VentanaC());
}
class VentanaC extends StatelessWidget {
  const VentanaC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VentanaC",
      home: Ventas(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Ventas extends StatefulWidget {
  const Ventas({super.key});

  @override
  State<Ventas> createState() => _VentasState();
}

class _VentasState extends State<Ventas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(

        title: Text("Maya - Venta",style: TextStyle(
          color: Color.fromRGBO(27, 2, 31, 0.782),
          fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Color.fromRGBO(152, 79, 226, 0.612),
      ),

  body: Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: [
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(width: 5.0)),
                  labelText: "Codigo Barras",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(133, 80, 133, 0.612),
                    fontWeight: FontWeight.bold
                    
                  )
                ),
              )
              ),
              SizedBox(width: 10,),
              IconButton(
                onPressed: (){}, icon: Icon(Icons.qr_code_scanner, size: 30,),
                highlightColor: Color.fromRGBO(190, 100, 232, 0.612),
                //focusColor: Color.fromRGBO(52, 3, 85, 0.612),
                hoverColor: Color.fromRGBO(52, 3, 85, 0.612),
                //splashColor: Color.fromRGBO(52, 3, 85, 0.612),
                )
          ],
        ),
        SizedBox( height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(width: 5.0)),
                  labelText: "Nombre Producto",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(133, 80, 133, 0.612),
                    fontWeight: FontWeight.bold
                    
                  )
                ),
              )
              ),
              SizedBox(width: 10,),
              IconButton(
                onPressed: (){}, icon: Icon(Icons.save_alt_rounded, size: 30,),
                highlightColor: Color.fromRGBO(190, 100, 232, 0.612),
                //focusColor: Color.fromRGBO(52, 3, 85, 0.612),
                hoverColor: Color.fromRGBO(52, 3, 85, 0.612),
                //splashColor: Color.fromRGBO(52, 3, 85, 0.612),
                ),  
          ],
        ),
        SizedBox( height: 20,),
        Container(child: 
        Center(
          heightFactor: 17,
          child: 
          Text("Aqui va la lista de productos", 
        ),
          ),
          )
      
        
      ],
    
    ),
    
    ),
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
    ),
    
    );
  }
}