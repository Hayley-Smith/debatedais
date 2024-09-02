import 'package:debatedais/UI/widgets/custom_drawer.dart';
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
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Create Argument Page",
        ),
      ),
    );
  }
}
