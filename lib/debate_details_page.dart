import 'package:debatedais/state/debate_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/debate_entity.dart'; // Import your debate model

class DebateDetailsPage extends StatefulWidget {
  final String debateId;

  const DebateDetailsPage({super.key, required this.debateId});

  @override
  State<DebateDetailsPage> createState() => _DebateDetailsPageState();
}

class _DebateDetailsPageState extends State<DebateDetailsPage> {
  @override
  Widget build(BuildContext context) {
    Debate? debate = Provider.of<DebateProvider>(context).getDebateById(
        widget.debateId); // Implement this method in your provider

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    debate!.proStatement,
                    style: Theme.of(context).textTheme.headlineLarge,
                    softWrap: true,
                  ),
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.person_add_rounded,
                size: 36,
              ),
              title: Text(debate.argumentFor1.text),
              tileColor: Colors.deepPurple[100],
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(
                Icons.person_remove_rounded,
                size: 36,

              ),
              title: Text(
                debate.argumentAgainst1.text,
              ),
              tileColor: Colors.deepPurple[200],
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.person_add_rounded,
                size: 36,

              ),
              title: Text(
                debate.argumentFor2.text,
              ),
              tileColor: Colors.deepPurple[100],
            ),
            const Divider(),
            ListTile(
              trailing: const Icon(
                Icons.person_remove_rounded,
                size: 36,

              ),
              title: Text(
                debate.argumentAgainst2.text,
              ),
              tileColor: Colors.deepPurple[200],
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.person_add_rounded,
                size: 36,

              ),
              title: Text(
                debate.argumentFor3.text,
              ),
              tileColor: Colors.deepPurple[100],
            ),
            const Divider(),
            Card(
              child: ListTile(
                trailing: const Icon(
                  Icons.person_remove_rounded,
                  size: 36,

                ),
                tileColor: Colors.deepPurple[200],
                title: Text(
                  debate.argumentAgainst3.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
