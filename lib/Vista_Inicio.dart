import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

void main() {
  runApp(VistaInicio());
}

class VistaInicio extends StatelessWidget {
  const VistaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Inicio",
      home: IniciarSesion(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({super.key});

  @override
  State<IniciarSesion> createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
          title: const Text(
            "Iniciar Sesion",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          shadowColor: Colors.black,
          backgroundColor: Color.fromARGB(255, 150, 30, 30)),*/
      body:  Stack(
        children: [
          Container(
            //color: Colors.black,
           color: Color.fromARGB(202, 176, 138, 244),
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              const SizedBox(height: 50),
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Inicio Sesion",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(width: 150,height: 150,
              child: Image.network("https://i.pinimg.com/564x/3d/9a/fa/3d9afaac978da498fcb0b4a06ff30462.jpg"),),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 350,
                    child: const TextField(
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.account_circle,
                          size: 30,
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: "Usuario",
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 350,
                    child: const TextField(
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          size: 30,
                          color: Colors.white,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: "Contraseña",
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      obscureText: true,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        /*Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>MenuPrincipal())
                  );*/
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          elevation: 10,
                          side: const BorderSide(
                              color: Color.fromARGB(255, 110, 22, 209),
                              width: 1)),
                      child: const Text(
                        "Ingresar",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 110, 22, 209)),
                      )
                      )
                ],
              ),
              SizedBox(height:20),
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    // width: 150,
                    height: 2,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Or',style: TextStyle(color: Colors.white),),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    // width: 150,
                    height: 2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: const CircleBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 162, 37, 235),
                        width: 1,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(
                    EvaIcons.facebook,
                    color: Color.fromARGB(255, 162, 37, 235),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: const CircleBorder(
                      side: BorderSide(
                        color: Color.fromARGB(255, 162, 37, 235),
                        width: 1,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(20),
                  ),
                  child: const Icon(
                    EvaIcons.google,
                    color: Color.fromARGB(255, 162, 37, 235),
                  ),
                ),
              ],
            ),
            ],
          
          )
        ],
      ),
    );
  }
}