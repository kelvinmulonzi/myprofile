import 'package:flutter/material.dart';
import '../data/skills_data.dart';

class SkillsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(skills[index].icon),
          title: Text(skills[index].name),
        );
      },
    );
  }
}