import 'package:debatedais/UI/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class WeighInPage extends StatefulWidget {
  const WeighInPage({super.key});

  @override
  State<WeighInPage> createState() => _WeighInPageState();
}

class _WeighInPageState extends State<WeighInPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: Center(
        child: Text("weigh in Page"),
      ),
    );
  }
}
