import 'package:flutter/material.dart';

class OpenDebatesPage extends StatefulWidget {
  const OpenDebatesPage({super.key});

  @override
  State<OpenDebatesPage> createState() => _OpenDebatesPageState();
}

class _OpenDebatesPageState extends State<OpenDebatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Open Debates Page"),
      ),
    );
  }
}
