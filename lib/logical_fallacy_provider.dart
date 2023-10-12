import 'package:flutter/foundation.dart';

import 'logical_fallacy_entity.dart';

class LogicalFallacyProvider extends ChangeNotifier {
  List<LogicalFallacy> _fallacies = []; // List of logical fallacies

  // Getter for the list of logical fallacies
  List<LogicalFallacy> get fallacies => _fallacies;

  // Add a new logical fallacy to the list
  void addFallacy(LogicalFallacy newFallacy) {
    _fallacies.add(newFallacy);
    notifyListeners();
  }
}
