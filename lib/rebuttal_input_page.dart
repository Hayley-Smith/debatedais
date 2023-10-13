import 'package:debatedais/debate_provider.dart';
import 'package:debatedais/logical_fallacy_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'rebuttal_entity.dart'; // Import your debate model

class RebuttalInputPage extends StatefulWidget {
  final String debateId;
  const RebuttalInputPage({super.key, required this.debateId});

  @override
  _RebuttalInputPageState createState() => _RebuttalInputPageState();
}

class _RebuttalInputPageState extends State<RebuttalInputPage> {
  final TextEditingController _rebuttalController = TextEditingController();

  Map<LogicalFallacy, int> logicalFallaciesMap = {
    LogicalFallacy(
      id: '1',
      title: 'Ad Hominem',
      text:
          'Attacking the person making the argument rather than addressing the argument itself.',
    ): 3,
    LogicalFallacy(
      id: '2',
      title: 'Straw Man',
      text:
          'Misrepresenting or exaggerating someone\'s argument to make it easier to attack.',
    ): 2,
    LogicalFallacy(
      id: '3',
      title: 'Appeal to Authority',
      text:
          'Asserting that something is true because an authority figure or expert said so, even if the authority is not relevant to the argument.',
    ): 1,
    LogicalFallacy(
      id: '4',
      title: 'False Dichotomy',
      text:
          'Presenting two extreme options as the only possibilities, when other options exist.',
    ): 0,
    LogicalFallacy(
      id: '5',
      title: 'Hasty Generalization',
      text: 'Drawing a conclusion based on insufficient or biased evidence.',
    ): 4,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Rebuttal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              onSubmitted: ((value) {
                //add rebuttal to debate
                Provider.of<DebateProvider>(context, listen: false)
                    .addRebuttalToDebate(
                        widget.debateId,
                        Rebuttal(
                            rebuttalId: "rebuttalId",
                            text: _rebuttalController.text,
                            userId: "userId",
                            logicalFallacies: logicalFallaciesMap,
                            timestamp: DateTime.now()));
                Navigator.of(context).pop();
                if (kDebugMode) {
                  print("rebuttal submitted");
                }
              }),
              controller: _rebuttalController,
              decoration: const InputDecoration(
                labelText: 'Rebuttal Text',
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _rebuttalController.dispose();
    super.dispose();
  }
}
