import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'State Management'),
        KnowledgeText(knowledge: 'REST APIs, Firebase'),
        KnowledgeText(knowledge: 'Git, GitHub, Version Control'),
        KnowledgeText(knowledge: 'Responsive & Adaptive Design'),
        KnowledgeText(knowledge: 'App Deployment (Play Store, App Store)'),
        KnowledgeText(knowledge: 'Payment Gateway Integration'),
        KnowledgeText(knowledge: 'Third-party API Integration'),
        KnowledgeText(knowledge: 'Push Notifications, FCM'),
      ],
    );
  }
}