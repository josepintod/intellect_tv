import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intellect_tv/ui/pages/authentication/login.dart';
import 'package:intellect_tv/ui/widget/content.dart';

class FirebaseCentral extends StatelessWidget {
  const FirebaseCentral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const ContentPage(
            title: '',
          );
        } else {
          return const LoginPage(
            title: '',
          );
        }
      },
    );
  }
}
