import 'package:debatedais/domain/open_debate_entity.dart';
import 'package:flutter/material.dart';

class CreateArgumentPage extends StatefulWidget {
 // final OpenDebate openDebate;
  const CreateArgumentPage({super.key});

  @override
  State<CreateArgumentPage> createState() => _CreateArgumentPageState();
}

class _CreateArgumentPageState extends State<CreateArgumentPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Create Argument Page",
        ),
      ),
    );
  }
}
