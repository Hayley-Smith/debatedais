import 'package:debatedais/domain/mla_source_entity.dart';

class Argument {
  final String text;
  final DateTime timeStamp;
  final String argumentId;
  final String userId;

  Argument(
      {required this.text,
      required this.timeStamp,
      required this.argumentId,
      required this.userId,
      required List<MLASource> sources});
}
