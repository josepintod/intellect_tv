import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intellect_tv/ui/theme/theme.dart';
import '../widget/content.dart';
import '../widget/home.dart';
import 'authentication/login.dart';
import 'authentication/registro.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Red Social Intellect TV',
      theme: MyTheme.ligthTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginPage(
              title: 'LogIn',
            ),
        '/register': (context) => const RegisterPage(
              title: 'Registro',
            ),
        '/': (context) => const HomePage(
              title: 'Home',
            ),
        '/content': (context) => const ContentPage(
              title: 'Contenido',
            ),
      },
    );
  }
}
