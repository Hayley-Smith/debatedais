import 'package:flutter/cupertino.dart';

import '../domain/open_debate_entity.dart';

class OpenDebateProvider extends ChangeNotifier {
  final List<OpenDebate> _openDebates = [
    OpenDebate(
      topic:
          "Is the government doing enough to combat climate change, or should more aggressive policies be implemented?",
      proposer: "userId", openDebateId: '123',
    ),
    OpenDebate(
      topic:
          "Should governments regulate social media platforms to curb misinformation, hate speech, and protect user privacy?",
      proposer: "userId", openDebateId: '1234',
    ),
    OpenDebate(
      topic:
          "Is censorship of artistic expression ever justified, or does it violate freedom of speech?",
      proposer: "userId", openDebateId: '12345',
    ),
  ];

  List<OpenDebate> get openDebates => _openDebates;

  void addOpenDebate(OpenDebate openDebate) {
    _openDebates.add(openDebate);
    notifyListeners();
  }
}
