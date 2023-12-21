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
        title: const Text('Closed Debate List'),
      ),
      body: debates.isEmpty
          ? const Center(
              child: Text('No debates available.'),
            )
          : ListView.builder(
              itemCount: debates.length,
              itemBuilder: (context, index) {
                Debate debate = debates[index];
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: ListTile(
                      leading: const CircleAvatar(child: Icon(Icons.question_mark,),),
                      tileColor: Colors.deepPurple[100],
                      title: Text(
                        debate.proStatement,
                      ),
                      subtitle: Text(
                        'Author: ${debate.userIdPro}',
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
                    ),
                  ),
                );
              },
            ),
    );
  }
}
