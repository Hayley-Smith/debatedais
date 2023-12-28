import 'package:flutter/material.dart';
import 'cite_source_desktop_layout.dart';
import 'cite_source_mobile_layout.dart';

class CiteSourcePageResponsive extends StatefulWidget {
  const CiteSourcePageResponsive({super.key});

  @override
  State<CiteSourcePageResponsive> createState() =>
      _CiteSourcePageResponsiveState();
}

class _CiteSourcePageResponsiveState extends State<CiteSourcePageResponsive> {
  final double thresholdWidth = 800;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(builder: (context, constraints) {
        double currentWidth = constraints.maxWidth;

        if (currentWidth < thresholdWidth) {
          return const CiteSourcePage();
        } else {
          return const CiteSourceDesktopLayout();
        }
      }),
    );
  }
}
