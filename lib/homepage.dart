import 'package:flutter/material.dart';

import 'debate_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/create_debate');
              },
              child: const Text(
                "Create Debate",
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClosedDebatesPage()),
              );
            },
            child: const Text('View Debates'),
          )
        ],
      ),
    );
  }
}
