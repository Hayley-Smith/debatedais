import 'package:debatedais/rebuttal_entity.dart';
import 'package:flutter/material.dart';

import 'debate_entity.dart'; // Import your debate model

class DebateDetailsPage extends StatelessWidget {
  final Debate debate;

  const DebateDetailsPage({super.key, required this.debate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debate Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Thesis Statement: ${debate.thesisStatement}'),
            Text('User A: ${debate.userA}'),
            Text('User B: ${debate.userB}'),
            // Display other debate information as needed

            const SizedBox(height: 16.0),
            const Text(
              'Rebuttals:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            // Display a list of rebuttals ordered by timestamp
            Column(
              children: debate.rebuttals
                  .map((rebuttal) => RebuttalTile(rebuttal: rebuttal))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class RebuttalTile extends StatelessWidget {
  final Rebuttal rebuttal;

  const RebuttalTile({super.key, required this.rebuttal});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (() {
        //when a user who is not userA or userB taps on this tile, they can tag the
      }),
      title: Text(rebuttal.text),
      subtitle: Text('User: ${rebuttal.userId}'),
      // Display other rebuttal information as needed
      trailing: Text('Timestamp: ${rebuttal.timestamp}'),
    );
  }
}
