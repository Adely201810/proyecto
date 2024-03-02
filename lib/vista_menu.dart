import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        /*leading:  IconButton(onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>VistaInicio()));
        }, icon: const Icon(Icons.arrow_back)),*/

        title: const Text(
          "MENÚ",
          style: TextStyle(
              fontSize: 25.0,
              color: Color.fromRGBO(27, 2, 31, 0.782),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(152, 79, 226, 0.612),
      ),
      /* body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              heightFactor: 5,
              child: Text("MENU", style: TextStyle(
                color: Color.fromRGBO(43, 3, 68, 0.612),
                fontSize: 25,
              ),),)

          ],
        ),
        ),

      ),*/
    );
  }
}
