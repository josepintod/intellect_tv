import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:intellect_tv/controller/authentication_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  AuthenticationController authenticationController = Get.find();

  _login(theEmail, thePassword) async {
    print('_login $theEmail $thePassword');
    try {
      await authenticationController.login(theEmail, thePassword);
    } catch (err) {
      Get.snackbar(
        "Login",
        err.toString(),
        icon: const Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Image.asset(
                'img_login_1.jpg',
                fit: BoxFit.contain,
              ),
            ),
            // Primer Input
            Center(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                child: TextField(
                  //controller y dentro de onchanged es nuevo
                  //en primer input

                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Correo',
                  ),
                  onChanged: (text) {},
                ),
              ),
            ),
            // Segundo Input
            Center(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña',
                  ),
                  onChanged: (text) {},
                ),
              ),
            ),
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
                    Navigator.pushNamed(context, '/content');
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
