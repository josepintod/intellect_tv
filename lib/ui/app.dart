import 'package:flutter/material.dart';
import 'pages/content.dart';
import 'pages/inicio.dart';
import 'pages/login.dart';
import 'pages/registro.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Red Social Intellect TV',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPage(
              title: 'Bienvenido a Intellect TV',
            ),
        '/login': (context) => const LoginPage(
              title: 'LogIn',
            ),
        '/register': (context) => const RegisterPage(
              title: 'Registro',
            ),
        '/content': (context) => const ContentPage(
              title: 'Contenido',
            ),
      },
    );
  }
}
