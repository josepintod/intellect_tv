import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bienvenidos a Intellect Tv'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: () {
              Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            },
          )
        ],
      ),
      body: Center(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Center(
              child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Image.asset(
              'home_cine-tv.jpg',
              fit: BoxFit.contain,
            ),
          )),
          // Boton de Ingreso
          Center(
            child: Container(
              width: 343,
              height: 52,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                color: const Color.fromRGBO(0, 0, 0, 1),
                border: Border.all(
                  color: const Color.fromARGB(0, 0, 0, 1),
                  width: 2,
                ),
              ),
              child: MaterialButton(
                child: const Text(
                  "INGRESAR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Roboto',
                      fontSize: 13,
                      height: 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
          ),
          // Boton de Registro
          Center(
            child: Container(
              width: 343,
              height: 52,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
                color: const Color.fromRGBO(0, 0, 0, 1),
                border: Border.all(
                  color: const Color.fromARGB(0, 0, 0, 1),
                  width: 2,
                ),
              ),
              child: MaterialButton(
                child: const Text(
                  "REGISTRO",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Roboto',
                      fontSize: 13,
                      height: 1),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
