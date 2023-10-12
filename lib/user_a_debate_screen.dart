import 'package:flutter/material.dart';

class UserADebateScreen extends StatefulWidget {
  // Takes in a debate ID. Note: this debate has already been checked to confirm
  // that userA's id matches the logged in user and another user has
  // confirmed the original thesis.
  final String debateId;

  const UserADebateScreen({
    Key? key,
    required this.debateId,
  }) : super(key: key);

  @override
  State<UserADebateScreen> createState() => _UserADebateScreenState();
}

class _UserADebateScreenState extends State<UserADebateScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
