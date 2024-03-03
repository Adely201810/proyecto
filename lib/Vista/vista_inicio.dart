import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:proyecto/Vista/vista_agregar_usuario.dart';
import 'package:proyecto/Vista/vista_menu.dart';


Future<void> main() async{
  await Hive.initFlutter();
  await Hive.openBox('productos');
  await Hive.openBox('categorias');
  await Hive.openBox('usuarios');
  await Hive.openBox('ventas');
  runApp(const VistaInicio());
}

class VistaInicio extends StatelessWidget {
  const VistaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(202, 176, 138, 244),
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
                        color: Color.fromRGBO(249, 248, 250, 0.907),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: Image.network(
                    "https://i.pinimg.com/564x/3d/9a/fa/3d9afaac978da498fcb0b4a06ff30462.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(
                          color: Color.fromRGBO(80, 15, 118, 0.686),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle,
                          size: 30,
                          color: Color.fromRGBO(80, 15, 118, 0.686),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: "Usuario",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(249, 248, 250, 0.907),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(
                          color: Color.fromRGBO(80, 15, 118, 0.686),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                          color: Color.fromRGBO(80, 15, 118, 0.686),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: "Contraseña",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(249, 248, 250, 0.907),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VistaMenu()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 100),
                          elevation: 10,
                          side: const BorderSide(
                              color: Color.fromRGBO(80, 15, 118, 0.686),
                              width: 1)),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(80, 15, 118, 0.686)),
                      ))
                ],
              ),
               
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      color: const Color.fromRGBO(80, 15, 118, 0.686),
                      // width: 150,
                      height: 2,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Or',
                    style: TextStyle(
                      color: Color.fromRGBO(80, 15, 118, 0.686),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      color: const Color.fromRGBO(80, 15, 118, 0.686),
                      // width: 150,
                      height: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AgregarU(listaUsuarioController: [],)));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 55),
                          elevation: 10,
                          side: const BorderSide(
                              color: Color.fromRGBO(80, 15, 118, 0.686),
                              width: 1)),
                      child: const Text(
                        "Registrarse",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(80, 15, 118, 0.686)),
                      ))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
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
