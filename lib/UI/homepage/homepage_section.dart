import 'package:flutter/material.dart';

class HomePageSection extends StatelessWidget {
  final String text;
  final String path;
  final String buttonText;

  const HomePageSection({
    super.key,
     required this.text,
     required this.path, required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, path);
            },
            child:  Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(buttonText),
            ),
          ),
        ),
      ],
    );
  }
}