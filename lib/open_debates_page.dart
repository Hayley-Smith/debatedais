import 'package:debatedais/domain/open_debate_entity.dart';
import 'package:debatedais/state/open_debate_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OpenDebatesPage extends StatefulWidget {
  const OpenDebatesPage({super.key});

  @override
  State<OpenDebatesPage> createState() => _OpenDebatesPageState();
}

class _OpenDebatesPageState extends State<OpenDebatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Open Debates"),
      ),
      body: Center(
        child: Consumer<OpenDebateProvider>(
          builder: (context, provider, child) {
            List<OpenDebate> list = provider.openDebates;
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/join_debate");
                    },
                    child: Card(
                      elevation: 10,
                      color: Colors.deepPurple[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            child: Icon(
                              Icons.question_mark,
                            ),
                          ),
                          title: Text(list[index].topic),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
