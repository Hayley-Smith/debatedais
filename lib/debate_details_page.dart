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
  final double thresholdWidth = 1000; // Adjust this value as needed

  @override
  Widget build(BuildContext context) {
    Debate? debate = Provider.of<DebateProvider>(context).getDebateById(
        widget.debateId); // Implement this method in your provider

    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(builder: (context, constraints) {
        double currentWidth = constraints.maxWidth;

        if (currentWidth < thresholdWidth) {
          return DebateDetailsMobileLayout(
            debate: debate,
          );
        } else {
          return DebateDetailsDesktopLayout(
            debate: debate,
          );
        }
      }),
    );
  }
}

class DebateDetailsDesktopLayout extends StatelessWidget {
  final Debate? debate;

  const DebateDetailsDesktopLayout({
    super.key,
    required this.debate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            const Expanded(
              child: Column(
                children: [
                  Text(
                    "",
                  ),
                ],
              ),
            ),
            Expanded(flex: 4,
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
                    argument: debate!.argumentFor1,
                  ),
                  //const Divider(),
                  ArgumentAgainstTile(
                    argument: debate!.argumentAgainst1,
                  ),
                  //const Divider(),
                  ArgumentForTile(
                    argument: debate!.argumentFor2,
                  ),
                  //const Divider(),
                  ArgumentAgainstTile(
                    argument: debate!.argumentAgainst2,
                  ),
                  //const Divider(),
                  ArgumentForTile(
                    argument: debate!.argumentFor3,
                  ),
                  // const Divider(),
                  ArgumentAgainstTile(
                    argument: debate!.argumentAgainst3,
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                children: [
                  Text(
                    "",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DebateDetailsMobileLayout extends StatelessWidget {
  const DebateDetailsMobileLayout({
    super.key,
    required this.debate,
  });

  final Debate? debate;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            argument: debate!.argumentFor1,
          ),
          //const Divider(),
          ArgumentAgainstTile(
            argument: debate!.argumentAgainst1,
          ),
          //const Divider(),
          ArgumentForTile(
            argument: debate!.argumentFor2,
          ),
          //const Divider(),
          ArgumentAgainstTile(
            argument: debate!.argumentAgainst2,
          ),
          //const Divider(),
          ArgumentForTile(
            argument: debate!.argumentFor3,
          ),
          // const Divider(),
          ArgumentAgainstTile(
            argument: debate!.argumentAgainst3,
          ),
        ],
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
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        subtitle: TextButton(
          onPressed: () {},
          child: const Text(
            "Sources",
          ),
        ),
        trailing: const CircleAvatar(
          child: Icon(
            Icons.person_remove_rounded,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            argument.text,
          ),
        ),
        tileColor: Colors.deepPurple[200],
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
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        subtitle: TextButton(
          onPressed: () {},
          child: const Text(
            "Sources",
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
    );
  }
}
