import 'package:debatedais/state/debate_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/argument_entity.dart';
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
            ArgumentForTile(
              argument: debate.argumentFor1,
            ),
            const Divider(),
            ArgumentAgainstTile(
              argument: debate.argumentAgainst1,
            ),
            const Divider(),
            ArgumentForTile(
              argument: debate.argumentFor2,
            ),
            const Divider(),
            ArgumentAgainstTile(
              argument: debate.argumentAgainst2,
            ),
            const Divider(),
            ArgumentForTile(
              argument: debate.argumentFor3,
            ),
            const Divider(),
            ArgumentAgainstTile(
              argument: debate.argumentAgainst3,
            ),
          ],
        ),
      ),
    );
  }
}

class ArgumentAgainstTile extends StatelessWidget {
  const ArgumentAgainstTile({
    super.key,
    required this.argument,
  });

  final Argument argument;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: ListTile(
          subtitle: TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Sources",
              ),
            ),
          ),
          trailing: const CircleAvatar(
            child: Icon(
              Icons.person_remove_rounded,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              argument.text,
            ),
          ),
          tileColor: Colors.deepPurple[200],
        ),
      ),
    );
  }
}

class ArgumentForTile extends StatelessWidget {
  const ArgumentForTile({
    super.key,
    required this.argument,
  });

  final Argument argument;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: ListTile(
          subtitle: TextButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Sources",
              ),
            ),
          ),
          leading: const CircleAvatar(
            child: Icon(
              Icons.person_add_rounded,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(argument.text),
          ),
          tileColor: Colors.deepPurple[100],
        ),
      ),
    );
  }
}
