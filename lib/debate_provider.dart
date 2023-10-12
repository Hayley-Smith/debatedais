import 'package:debatedais/rebuttal_entity.dart';
import 'package:flutter/foundation.dart';

import 'debate_entity.dart';

class DebateProvider extends ChangeNotifier {
  final List<Debate> _debates = [
    Debate(
      userA: 'User1',
      userB: 'User2',
      thesisStatement: 'Should smartphones be allowed in schools?',
      openingStatement1: 'User1 argues in favor of allowing smartphones.',
      openingStatement2: 'User2 argues against allowing smartphones.',
      rebuttals: [
        Rebuttal(
          rebuttalId: '1',
          text: 'User1\'s argument is not practical for classroom settings.',
          userId: 'User2',
          timestamp: DateTime.now().subtract(Duration(days: 5)),
          logicalFallacies: {},
        ),
        Rebuttal(
          rebuttalId: '2',
          text: 'User2 ignores the educational benefits of smartphones.',
          userId: 'User1',
          timestamp: DateTime.now().subtract(Duration(days: 4)),
          logicalFallacies: {},
        ),
        Rebuttal(
          rebuttalId: '3',
          text: 'User1 provides evidence of improved learning outcomes.',
          userId: 'User1',
          timestamp: DateTime.now().subtract(Duration(days: 3)),
          logicalFallacies: {},
        ),
        Rebuttal(
          rebuttalId: '4',
          text:
              'User2 argues about potential distractions, but students can learn to use smartphones responsibly.',
          userId: 'User1',
          timestamp: DateTime.now().subtract(Duration(days: 2)),
          logicalFallacies: {},
        ),
        Rebuttal(
          rebuttalId: '5',
          text: 'User1\'s sources are outdated and biased.',
          userId: 'User2',
          timestamp: DateTime.now().subtract(Duration(days: 1)),
          logicalFallacies: {},
        ),
      ],
      isThesisConfirmed: true,
      isUserATurn: false,
    )
  ]; // The current debate

  // Getter for the current debate
  List<Debate> get debates => _debates;

  // Setter to update the current debate
  void addDebate(Debate newDebate) {
    _debates.add(newDebate);
    notifyListeners();
  }
}
