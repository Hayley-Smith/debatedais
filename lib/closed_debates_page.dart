import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'debate_details_page.dart';
import 'domain/debate_entity.dart';
import 'state/debate_provider.dart';

class ClosedDebatesPage extends StatelessWidget {
  const ClosedDebatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Debate> debates = Provider.of<DebateProvider>(context).debates;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Debate List'),
      ),
      body: debates.isEmpty
          ? const Center(
              child: Text('No debates available.'),
            )
          : ListView.builder(
              itemCount: debates.length,
              itemBuilder: (context, index) {
                Debate debate = debates[index];
                return ListTile(
                  title: Text(
                    'Thesis: ${debate.proStatement}',
                  ),
                  subtitle: Text(
                    'User A: ${debate.userIdPro}',
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DebateDetailsPage(
                          debateId: debate.debateId,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
