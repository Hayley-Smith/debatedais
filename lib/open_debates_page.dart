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
      appBar: AppBar(),
      body: Center(
        child: Consumer<OpenDebateProvider>(
          builder: (context, provider, child) {
            List<OpenDebate> list = provider.openDebates;
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(elevation: 10, color: Colors.deepPurple[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: const CircleAvatar(child: Icon(Icons.question_mark,),),
                          onTap: () {
                          Navigator.pushNamed(context, "/make_argument");
                        },
                          title: Text(list[index].topic),
                        ),
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
