import 'package:debatedais/authentication/authentication.dart';
import 'package:debatedais/rebuttal_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'create_debate.dart';
import 'debate_provider.dart';
import 'firebase/firebase_options.dart';
import 'logical_fallacy_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DebateProvider()),
        ChangeNotifierProvider(create: (_) => RebuttalProvider()),
        ChangeNotifierProvider(create: (_) => LogicalFallacyProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Debate Dais',
      routes: {
        '/createDebate': (context) => CreateDebatePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AuthenticationPage(),
    );
  }
}
