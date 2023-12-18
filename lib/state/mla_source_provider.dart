import 'package:flutter/material.dart';

import '../domain/mla_source_entity.dart';

class MLASourceProvider extends ChangeNotifier {
  final List<MLASource> _mlaSources= []; // List of logical fallacies

  // Getter for the list of logical fallacies
  List<MLASource> get mlaSources => _mlaSources;

  // Add a new logical fallacy to the list
  void addFallacy(MLASource source) {
    _mlaSources.add(source);
    notifyListeners();
  }
}