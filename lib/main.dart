import 'package:debatedais/UI/active_debate_affirmative_page.dart';
import 'package:debatedais/authentication/authentication.dart';
import 'package:debatedais/authentication/login.dart';
import 'package:debatedais/authentication/signup.dart';
import 'package:debatedais/UI/create_argument_page.dart';
import 'package:debatedais/UI/closed_debates_page.dart';

import 'package:debatedais/UI/join_debate_page.dart';

import 'package:debatedais/state/mla_source_provider.dart';
import 'package:debatedais/UI/thesis_statement_list_page.dart';
import 'package:debatedais/UI/logical_fallacy_list_page.dart';
import 'package:debatedais/state/thesis_statement_provider.dart';
import 'package:debatedais/UI/user_profile_page.dart';
import 'package:debatedais/UI/weigh_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'UI/cite_source/cite_source_mobile_layout.dart';
import 'UI/homepage/homepage_large.dart';
import 'authentication/forgot_password_page.dart';
import 'UI/create_debate_page.dart';
import 'UI/debate_details_page.dart';

import 'state/debate_provider.dart';
import 'firebase/firebase_options.dart';
import 'state/logical_fallacy_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DebateProvider()),
        ChangeNotifierProvider(create: (_) => ThesisStatementProvider()),
        ChangeNotifierProvider(create: (_) => LogicalFallacyProvider()),
        //  ChangeNotifierProvider(create: (_) => ArgumentProvider()),
        //  ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => MLASourceProvider()),
      ],
      child: const MyApp(),
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
        '/create_debate': (context) => const CreateDebatePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/open_debates': (context) => const ThesisStatementListPage(),
        '/open_debate_detail': (context) => const DebateDetailsPage(
              debateId: '1',
            ),
        '/create_argument': (context) => const CreateArgumentPage(),
        '/cite_source': (context) => const CiteSourcePage(),
        '/closed_debates': (context) => const ClosedDebatesPage(),
        '/logical_fallacies': (context) => const LogicalFallacyListPage(),
        //'/logical_fallacy': (context) => LogicalFallacyDetailPage(),
        '/weigh_in': (context) => const WeighInPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/user_profile': (context) => const UserProfilePage(),
        '/home_page': (context) => const HomepageLarge(),
        '/active_debate_affirmative': (context) => const ActiveDebateAffirmativePage(),
        //'/active_debate_negative': (context) => const ActiveDebateNegativePage(),
        '/join_debate': (context) => const JoinDebatePage(
            // openDebate: OpenDebate(
            //   openDebateId: "sample",
            //   topic: "Sample Topic",
            //   proposer: 'SampleUserID',
            //),
            ),
      },
      theme: ThemeData(

        textTheme: TextTheme(),
        primarySwatch: Colors.deepPurple,
      ),
      home: const AuthenticationPage(),
    );
  }
}
