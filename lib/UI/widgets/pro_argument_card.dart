import 'package:flutter/material.dart';

import '../../domain/debate_entity.dart';

class ProArgumentCard extends StatelessWidget {
  const ProArgumentCard({
    super.key,
    required this.debate,
  });

  final Debate debate;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        //leading: const CircleAvatar(child: Icon(Icons.question_mark,),),
        tileColor: Colors.deepPurple[100],
        title: Text(
          debate.proStatement,
        ),
        subtitle: Text(
          '${debate.userIdPro} vs. ${debate.userIdCon}',
        ),
      ),
    );
  }
}