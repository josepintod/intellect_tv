import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intellect_tv/controller/authentication_controller.dart';
import 'package:intellect_tv/controller/chat_controller.dart';
import 'package:intellect_tv/controller/firestore_controller.dart';
import 'package:intellect_tv/ui/pages/firebase_central.dart';
import 'package:intellect_tv/ui/theme/theme.dart';
import '../widget/content.dart';
import '../widget/home.dart';
import 'authentication/login.dart';
import 'authentication/registro.dart';

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Red Social Intellect TV',
      theme: MyTheme.ligthTheme,
      darkTheme: MyTheme.darkTheme,
      home: Scaffold(
          body: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("error ${snapshot.error}");
            return const Wrong();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Get.put(FirebaseController());
            Get.put(AuthenticationController());
            Get.put(ChatController());
            return const FirebaseCentral();
          }

          return const Loading();
        },
      )),
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

class Wrong extends StatelessWidget {
  const Wrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Algo salio mal"));
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Loading"));
  }
}
