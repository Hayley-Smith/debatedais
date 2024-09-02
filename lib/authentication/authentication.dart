import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../UI/homepage/home_page.dart';
import 'login.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (MediaQuery.of(context).size.width > 1000) {
                return const HomePage();
              } else {
                return const HomePage();
              }
            } else {
              return const LoginPage();
            }
          }),
    );
  }
}
