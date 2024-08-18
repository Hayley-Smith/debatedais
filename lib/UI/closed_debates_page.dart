
import 'package:debatedais/UI/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'debate_details_page.dart';
import '../domain/debate_entity.dart';
import '../state/debate_provider.dart';

class ClosedDebatesPage extends StatelessWidget {
  final double thresholdWidth = 800;
  const ClosedDebatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Debate> debates = Provider.of<DebateProvider>(context).debates;

    return LayoutBuilder(builder: (context, constraints) {
      double currentWidth = constraints.maxWidth;

      if (currentWidth < thresholdWidth) {
        return ClosedDebatesMobileLayout(
          debates: debates,
        );
      } else {
        return ClosedDebatesDesktopLayout(
          debates: debates,
        );
      }
    });
  }
}

class ClosedDebatesDesktopLayout extends StatelessWidget {
  const ClosedDebatesDesktopLayout({
    super.key,
    required this.debates,
  });

  final List<Debate> debates;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Closed Debate List'),
      ),
      drawer: const CustomDrawer(),
      body: debates.isEmpty
          ? const Center(
              child: Text('No debates available.'),
            )
          : Container(
              decoration: BoxDecoration(
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
                child: SizedBox(
                  width: 600,
                  child: ListView.builder(
                    itemCount: debates.length,
                    itemBuilder: (context, index) {
                      Debate debate = debates[index];
                      return InkWell(
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
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: ListTile(
                            //leading: const CircleAvatar(child: Icon(Icons.question_mark,),),
                            tileColor: Colors.deepPurple[100],
                            title: Text(
                              debate.proStatement,
                            ),
                            subtitle: Text(
                              '${debate.userIdPro} vs. ${debate.userIdCon}',
                            ),
                          ),
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

class ClosedDebatesMobileLayout extends StatelessWidget {
  const ClosedDebatesMobileLayout({
    super.key,
    required this.debates,
  });

  final List<Debate> debates;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Closed Debate List'),
      ),
      drawer: const CustomDrawer(),
      body: debates.isEmpty
          ? const Center(
              child: Text('No debates available.'),
            )
          : Container(
              decoration: BoxDecoration(
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: debates.length,
                  itemBuilder: (context, index) {
                    Debate debate = debates[index];
                    return InkWell(
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
                      child: ProArgumentCard(debate: debate),
                    );
                  },
                ),
              ),
            ),
    );
  }
}

class ProArgumentCard extends StatelessWidget {
  const ProArgumentCard({
    super.key,
    required this.debate,
  });

  final Debate debate;

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
        //leading: const CircleAvatar(child: Icon(Icons.question_mark,),),
        tileColor: Colors.deepPurple[100],
        title: Text(
          debate.proStatement,
        ),
        subtitle: Text(
          '${debate.userIdPro} vs. ${debate.userIdCon}',
        ),
      ),
    );
  }
}
