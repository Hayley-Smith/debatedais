import 'argument.dart';

class Debate {
  final String debateId;
  final String userIdPro;
  late final String userIdCon;
  late final String proStatement;
  late final Argument argumentFor1;
  late final Argument argumentFor2;
  late final Argument argumentFor3;
  late final Argument argumentAgainst1;
  late final Argument argumentAgainst2;
  late final Argument argumentAgainst3;
  late final bool isCompleted;

  Debate({
    required this.debateId,
    required this.userIdPro,
    required this.userIdCon,
    required this.proStatement,
    required this.argumentFor1,
    required this.argumentFor2,
    required this.argumentFor3,
    required this.argumentAgainst1,
    required this.argumentAgainst2,
    required this.argumentAgainst3,
    required this.isCompleted,
  });
}
