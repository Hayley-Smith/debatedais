import 'package:flutter/foundation.dart';

import '../domain/logical_fallacy_entity.dart';

class LogicalFallacyProvider extends ChangeNotifier {
  final List<LogicalFallacy> _fallacies = [
    LogicalFallacy(
      id: "1",
      title: "Ad Hominem",
      text: "Attacking the person instead of addressing the argument.",
    ),
    LogicalFallacy(
      id: "2",
      title: "Strawman",
      text: "Misrepresenting or exaggerating someone's argument to make it easier to attack.",
    ),
    LogicalFallacy(
      id: "3",
      title: "Appeal to Ignorance",
      text: "Asserting that a proposition is true because it hasn't been proven false, or vice versa.",
    ),
    LogicalFallacy(
      id: "4",
      title: "False Dilemma",
      text: "Presenting only two options when there are more possible outcomes.",
    ),
    LogicalFallacy(
      id: "5",
      title: "Slippery Slope",
      text: "Asserting that a relatively small first step will inevitably lead to a chain of related events.",
    ),
    LogicalFallacy(
      id: "6",
      title: "Circular Reasoning",
      text: "Using the conclusion of an argument as one of its premises.",
    ),
    LogicalFallacy(
      id: "7",
      title: "Appeal to Authority",
      text: "Using the opinion of an authority figure as evidence in an argument.",
    ),
    LogicalFallacy(
      id: "8",
      title: "Hasty Generalization",
      text: "Drawing a conclusion based on insufficient or biased evidence.",
    ),
    LogicalFallacy(
      id: "9",
      title: "Post Hoc (False Cause)",
      text: "Assuming that because one event followed another, the first event caused the second.",
    ),
    LogicalFallacy(
      id: "10",
      title: "Red Herring",
      text: "Introducing irrelevant information to divert attention from the main issue.",
    ),
    LogicalFallacy(
      id: "11",
      title: "Appeal to Tradition",
      text: "Arguing that something is right or good because it's been done that way for a long time.",
    ),
    LogicalFallacy(
      id: "12",
      title: "Appeal to Popularity (Bandwagon)",
      text: "Arguing that something is true or good because it's popular or widely accepted.",
    ),
    LogicalFallacy(
      id: "13",
      title: "Begging the Question",
      text: "Assuming the truth of the conclusion in one of the premises.",
    ),
    LogicalFallacy(
      id: "14",
      title: "Appeal to Emotion",
      text: "Using emotional manipulation to win an argument.",
    ),
    LogicalFallacy(
      id: "15",
      title: "No True Scotsman",
      text: "Refusing to accept a counterexample to a universal claim by redefining the terms.",
    ),
    LogicalFallacy(
      id: "16",
      title: "Genetic Fallacy",
      text: "Judging the worth or validity of an argument based on its origin.",
    ),
    LogicalFallacy(
      id: "17",
      title: "Equivocation",
      text: "Using a term in different senses in an argument.",
    ),
    LogicalFallacy(
      id: "18",
      title: "Appeal to Nature",
      text: "Arguing that because something is natural, it is good or right.",
    ),
    LogicalFallacy(
      id: "19",
      title: "Appeal to Fear",
      text: "Using fear to sway people's opinions.",
    ),
    LogicalFallacy(
      id: "20",
      title: "Composition Fallacy",
      text: "Assuming that what is true of the parts is true of the whole.",
    ),
    LogicalFallacy(
      id: "21",
      title: "Division Fallacy",
      text: "Assuming that what is true of the whole is true of the parts.",
    ),
    LogicalFallacy(
      id: "22",
      title: "False Analogy",
      text: "Drawing a comparison between two things that are not really alike.",
    ),
    LogicalFallacy(
      id: "23",
      title: "Texas Sharpshooter Fallacy",
      text: "Cherry-picking data clusters to suit an argument.",
    ),
    LogicalFallacy(
      id: "24",
      title: "Appeal to Pity",
      text: "Trying to win support for an argument by exploiting feelings of pity or guilt.",
    ),
    LogicalFallacy(
      id: "25",
      title: "Fallacy of Sunk Costs",
      text: "Continuing a behavior or endeavor as a result of previously invested resources.",
    ),
    LogicalFallacy(
      id: "26",
      title: "Anecdotal Fallacy",
      text: "Using personal anecdotes as evidence rather than strong, empirical evidence.",
    ),
    LogicalFallacy(
      id: "27",
      title: "Middle Ground Fallacy",
      text: "Asserting that a compromise between two positions must be correct.",
    ),
    LogicalFallacy(
      id: "28",
      title: "Loaded Question",
      text: "Asking a question that contains an assumption.",
    ),
    LogicalFallacy(
      id: "29",
      title: "Appeal to Consequences",
      text: "Arguing that a statement must be true or false based on its consequences.",
    ),
    LogicalFallacy(
      id: "30",
      title: "Fallacy Fallacy",
      text: "Assuming that because an argument contains a fallacy, its conclusion must be false.",
    ),
  ]; // List of logical fallacies

  // Getter for the list of logical fallacies
  List<LogicalFallacy> get fallacies => _fallacies;

  // Add a new logical fallacy to the list
  void addFallacy(LogicalFallacy newFallacy) {
    _fallacies.add(newFallacy);
    notifyListeners();
  }
}
