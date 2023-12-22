import 'package:flutter/material.dart';

import 'domain/logical_fallacy_entity.dart';
class LogicalFallacyDetailPage extends StatelessWidget {
  late final LogicalFallacy fallacy;

  LogicalFallacyDetailPage({required this.fallacy});

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text(fallacy.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(color: Colors.deepPurple[100],
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        fallacy.text,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        fallacy.essay,
                        style: TextStyle(
                          color: Colors.deepPurple[400],
                        ),
                      ),
                    ),
                    // Additional information or actions can be added here
                  ),
                ),
              ),
              // Add additional details or content here
            ],
          ),
        ),
      ),
    );
  }
}