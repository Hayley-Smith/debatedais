import 'package:debatedais/rebuttal_entity.dart';
import 'package:flutter/material.dart';

class RebuttalDetailPage extends StatefulWidget {
  final Rebuttal rebuttal;

  const RebuttalDetailPage({super.key, required this.rebuttal});

  @override
  State<RebuttalDetailPage> createState() => _RebuttalDetailPageState();
}

class _RebuttalDetailPageState extends State<RebuttalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(
        widget.rebuttal.text,
      )),
    );
  }
}
