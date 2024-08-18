import 'package:debatedais/domain/thesis_statement_entity.dart';
import 'package:debatedais/state/thesis_statement_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThesisStatementListPage extends StatefulWidget {
  const ThesisStatementListPage({super.key});

  @override
  State<ThesisStatementListPage> createState() => _ThesisStatementListPageState();
}

class _ThesisStatementListPageState extends State<ThesisStatementListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join a Debate"),
      ),
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.deepPurple.shade100,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: SizedBox(width: 600,
            child: Consumer<ThesisStatementProvider>(
              builder: (context, provider, child) {
                List<ThesisStatement> list = provider.openDebates;
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          //set the selectedOpenDebate in openDebateProvider
                          Provider.of<ThesisStatementProvider>(context, listen: false)
                              .setSelectedOpenDebate(list[index]);
                          //nav to join debate page
                          Navigator.pushNamed(context, "/join_debate",);
                        },
                        child: Card(
                          elevation: 10,
                          color: Colors.deepPurple[100],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: Colors.white10,
                                child: Icon(
                                  Icons.question_mark,
                                  color: Colors.white,
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
        ),
      ),
    );
  }
}
