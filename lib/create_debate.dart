import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider

import 'argument.dart';
import 'debate_entity.dart';
import 'debate_provider.dart';

class CreateDebatePage extends StatefulWidget {
  const CreateDebatePage({super.key});

  @override
  State<CreateDebatePage> createState() => _CreateDebatePageState();
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
                //TODO: finish filling out this debate object
              var debate =  Debate(
                  debateId: 'debateId',
                  userIdPro: 'userIdPro',
                  userIdCon: 'userIdCon',
                  proStatement: 'proStatement',
                  argumentFor1: Argument(
                    text: 'sampleargumenttext1',
                    timeStamp: DateTime.now(),
                    argumentId: 'sampleargumentid1',
                    userId: 'sampleuserid11',
                  ),
                  argumentFor2: Argument(
                    text: 'sampleargumenttext2',
                    timeStamp: DateTime.now(),
                    argumentId: 'sampleargumentid',
                    userId: 'sampleuserid12',
                  ),
                  argumentFor3: Argument(
                    text: 'sampleargumenttext3',
                    timeStamp: DateTime.now(),
                    argumentId: 'sampleargumentid3',
                    userId: 'sampleuserid13',
                  ),
                  argumentAgainst1: Argument(
                    text: 'sampleargumenttext4',
                    timeStamp: DateTime.now(),
                    argumentId: 'sampleargumentid4',
                    userId: 'sampleuserid14',
                  ),
                  argumentAgainst2: Argument(
                    text: 'sampleargumenttext5',
                    timeStamp: DateTime.now(),
                    argumentId: 'sampleargumentid5',
                    userId: 'sampleuserid15',
                  ),
                  argumentAgainst3: Argument(
                    text: 'sampleargumenttext6',
                    timeStamp: DateTime.now(),
                    argumentId: 'sampleargumentid6',
                    userId: 'sampleuserid16',
                  ),
                  isCompleted: false,
                );

                // Use the provider to add the debate to list of debates
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
