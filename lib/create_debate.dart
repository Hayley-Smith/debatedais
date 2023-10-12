import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider

import 'debate_entity.dart';
import 'debate_provider.dart';

class CreateDebatePage extends StatefulWidget {
  const CreateDebatePage({super.key});

  @override
  _CreateDebatePageState createState() => _CreateDebatePageState();
}

class _CreateDebatePageState extends State<CreateDebatePage> {
  final TextEditingController _thesisStatementController =
      TextEditingController();

  // Add a variable to store the currently logged-in user's ID
  String? currentUserId;

  @override
  void initState() {
    super.initState();

    // Use Firebase Authentication to get the current user
    User? user = FirebaseAuth.instance.currentUser;

    // Check if a user is logged in
    if (user != null) {
      // Get the user's ID
      currentUserId = user.uid;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Debate'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _thesisStatementController,
              decoration: const InputDecoration(labelText: 'Thesis Statement'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Create a Debate object with the provided data
                Debate debate = Debate(
                  userA: currentUserId ?? 'n/a',
                  userB: '', // You can leave userB empty initially
                  thesisStatement: _thesisStatementController.text,
                  openingStatement1: '', // Initialize with empty strings
                  openingStatement2: '',
                  rebuttals: [],
                  isThesisConfirmed: false,
                  isUserATurn: true,
                );

                // Use the provider to set the debate
                Provider.of<DebateProvider>(context, listen: false)
                    .addDebate(debate);

                // Navigate back to the previous screen or perform other actions
                Navigator.of(context).pop();
              },
              child: const Text('Create Debate'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up text controllers when the widget is disposed

    _thesisStatementController.dispose();
    super.dispose();
  }
}
