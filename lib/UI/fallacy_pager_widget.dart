import 'package:debatedais/UI/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class FallacyPagerWidget extends StatefulWidget {
  const FallacyPagerWidget({super.key});

  @override
  State<FallacyPagerWidget> createState() => _FallacyPagerWidgetState();
}

class _FallacyPagerWidgetState extends State<FallacyPagerWidget> {
  final List<Map<String, String>> fallacies = [
    {
      'title': 'Ad Hominem (Attack the Person)',
      'description':
          'This fallacy happens when someone attacks the person making the argument instead of the argument itself. Example: "We should take better care of the environment." Response: "Why should we listen to you? You failed science class!"'
    },
    {
      'title': 'Straw Man (Misrepresenting the Argument)',
      'description':
          'This fallacy occurs when someone misrepresents or oversimplifies another person\'s argument to make it easier to attack. Example: "We should have more regulations on pollution." Response: "So you think we should shut down all factories and put everyone out of work?"'
    },
    {
      'title': 'False Dichotomy (False Dilemma)',
      'description':
          'This fallacy happens when someone presents only two options or sides, ignoring other possibilities. Example: "You\'re either with us or against us."'
    },
    {
      'title': 'Slippery Slope (The Domino Effect)',
      'description':
          'This fallacy suggests that a small action will lead to a chain of events resulting in a major (usually negative) outcome, without proof that this will happen. Example: "If we allow students to redo one assignment, soon they’ll expect to redo all their work!"'
    },
    {
      'title': 'Circular Reasoning (Begging the Question)',
      'description':
          'This fallacy occurs when the conclusion of an argument is assumed in the premise, creating a circular argument. Example: "I’m right because I’m never wrong."'
    },
  ];

  int currentIndex = 0;

  void nextFallacy() {
    setState(() {
      if (currentIndex < fallacies.length - 1) {
        currentIndex++;
      } else {
        //proceed to logical fallacies list and mark completed
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Learn Logical Fallacies'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Here are 5 common logical fallacies seen often in discourse.",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Text(
              fallacies[currentIndex]['title']!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              fallacies[currentIndex]['description']!,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: nextFallacy,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
