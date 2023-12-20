import 'package:debatedais/domain/logical_fallacy_entity.dart';
import 'package:debatedais/logical_fallacy_detail_page.dart';
import 'package:debatedais/state/logical_fallacy_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogicalFallacyListPage extends StatefulWidget {
  const LogicalFallacyListPage({super.key});

  @override
  State<LogicalFallacyListPage> createState() => _LogicalFallacyListPageState();
}

class _LogicalFallacyListPageState extends State<LogicalFallacyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logical Fallacies'),
      ),
      body: Consumer<LogicalFallacyProvider>(
        builder: (context, provider, child) {
         List<LogicalFallacy> fallacies = provider.fallacies;
          return ListView.builder(
            itemCount: fallacies.length,
            itemBuilder: (context, index) {
              LogicalFallacy fallacy = fallacies[index];
              return ListTile(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogicalFallacyDetailPage(fallacy: fallacies[index]),
                  ),
                );
              },
                title: Text(fallacy.title),
                subtitle: Text(fallacy.text),
                // Additional information or actions can be added here
              );
            },
          );
        },
      ),
    );
  }
}
