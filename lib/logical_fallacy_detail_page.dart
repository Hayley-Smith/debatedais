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
              Text(
               fallacy.essay,
                style: const TextStyle(fontSize: 16.0),
              ),
              // Add additional details or content here
            ],
          ),
        ),
      ),
    );
  }
}