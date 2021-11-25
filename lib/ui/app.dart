import 'package:flutter/material.dart';
import 'package:intellect_tv/ui/pages/login.dart';
import 'package:intellect_tv/ui/pages/registro.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Red Social',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const LoginWidget(
              title: 'Login',
            ),
        '/registro': (context) => const RegistroWidget(
              title: 'Registro',
            ),
      },
    );
  }
}