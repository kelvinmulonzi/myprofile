import 'package:flutter/material.dart';
import '../data/skills_data.dart';

class SkillsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return SkillItem(skill: skills[index]);
      },
    );
  }
}

class SkillItem extends StatefulWidget {
  final Skill skill;

  const SkillItem({Key? key, required this.skill}) : super(key: key);

  @override
  State<SkillItem> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(widget.skill.icon),
      title: Text(widget.skill.name),
      onTap: () {
        // Handle onTap event if needed
      },
    );
  }
}