import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Boton para ir a login
            Center(
              child: Container(
                width: 150,
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
                    "Login",
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
            // Boton para ir a registro
            Center(
              child: Container(
                width: 150,
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
                    "Registro",
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
          ],
        ),
      ),
    );
  }
}
