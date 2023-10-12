import 'package:debatedais/rebuttal_entity.dart';
import 'package:flutter/foundation.dart';

class RebuttalProvider extends ChangeNotifier {
  List<Rebuttal> _rebuttals = []; // List of rebuttals

  // Getter for the list of rebuttals
  List<Rebuttal> get rebuttals => _rebuttals;

  // Add a new rebuttal to the list
  void addRebuttal(Rebuttal newRebuttal) {
    _rebuttals.add(newRebuttal);
    notifyListeners();
  }
}
