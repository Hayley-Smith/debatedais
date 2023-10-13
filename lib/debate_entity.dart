import 'package:debatedais/rebuttal_entity.dart';

class Debate {
  String debateId;
  String userA;
  String userB;
  String thesisStatement;
  String openingStatement1;
  String openingStatement2;
  List<Rebuttal> rebuttals;
  bool isThesisConfirmed;
  bool isUserATurn;

  Debate({
    required this.debateId,
    required this.userA,
    required this.userB,
    required this.thesisStatement,
    required this.openingStatement1,
    required this.openingStatement2,
    required this.rebuttals,
    required this.isThesisConfirmed,
    required this.isUserATurn,
  });
}
