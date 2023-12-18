import 'package:debatedais/home_page.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget page;
  const ResponsiveLayout({super.key, required this.page});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    //if width is 1200 or more return
    if (width >= 800) {
      return const HomepageBody();
    } else {
      return widget.page;
    }
  }
}
