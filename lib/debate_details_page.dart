import 'package:debatedais/debate_provider.dart';
import 'package:debatedais/rebuttal_detail_page.dart';
import 'package:debatedais/rebuttal_entity.dart';
import 'package:debatedais/rebuttal_input_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'debate_entity.dart'; // Import your debate model

class DebateDetailsPage extends StatefulWidget {
  final String debateId;

  const DebateDetailsPage({super.key, required this.debateId});

  @override
  State<DebateDetailsPage> createState() => _DebateDetailsPageState();
}

class _DebateDetailsPageState extends State<DebateDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Debate debate = Provider.of<DebateProvider>(context).getDebateById(
        widget.debateId); // Implement this method in your provider

    return Scaffold(
      appBar: AppBar(
        title: const Text('Debate Details'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.plus_one,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RebuttalInputPage(
                    debateId: debate.debateId,
                  ),
                ),
              );
            },
          ),
        ],
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
        //nav to rebuttal detail page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RebuttalDetailPage(
              rebuttal: rebuttal,
            ),
          ),
        );
      }),
      title: Text(
        rebuttal.text,
      ),
      subtitle: Text(
        'User: ${rebuttal.userId}',
      ),
      // Display other rebuttal information as needed
      trailing: Text(
        'Timestamp: ${rebuttal.timestamp}',
      ),
    );
  }
}
