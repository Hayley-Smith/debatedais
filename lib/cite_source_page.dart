import 'package:flutter/material.dart';

class CiteSourcePage extends StatefulWidget {
  const CiteSourcePage({super.key});

  @override
  State<CiteSourcePage> createState() => _CiteSourcePageState();
}

class _CiteSourcePageState extends State<CiteSourcePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Cite Source Page"),
      ),
    );
  }
}
