import 'logical_fallacy_entity.dart';

class Rebuttal {
  String rebuttalId;
  String text;
  String userId;
  DateTime timestamp;
  Map<LogicalFallacy, int> logicalFallacies;

  Rebuttal({
    required this.rebuttalId,
    required this.text,
    required this.userId,
    required this.logicalFallacies,
    required this.timestamp,
  });
}
