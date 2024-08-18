import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'debate.dart';
import 'debate_page.dart';
import 'debate_provider.dart';

class DebateList extends StatelessWidget {
  const DebateList({super.key});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("debate list page built");
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Debate List",
        ),
      ),
      body: Center(
        child: Consumer<DebateProvider>(
          builder: (context, provider, child) {
            List<Debate> debates =  provider.debates;
            return ListView.builder(
              itemCount: debates.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    //TODO: nav to debate page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DebatePage(debate: debates[index],),
                      ),
                    );
                  },
                  title: Text(debates[index].proStatement),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
