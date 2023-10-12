import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import Provider

import 'debate_details_page.dart';
import 'debate_entity.dart'; // Import your debate model
import 'debate_provider.dart'; // Import your debate provider

class DebateListPage extends StatelessWidget {
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
                  title: Text('Thesis: ${debate.thesisStatement}'),
                  subtitle: Text('User A: ${debate.userA}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DebateDetailsPage(debate: debate),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
