import 'package:flutter/material.dart';

class Skill {
  final IconData icon;
  final String name;

  Skill({required this.icon, required this.name});
}

final skills = [
  Skill(icon: Icons.code, name: 'Flutter Developer'),
  Skill(icon: Icons.design_services, name: 'UI/UX Designer'),
  Skill(icon: Icons.security, name: 'Cybersecurity Enthusiast'),
  Skill(icon: Icons.analytics, name: 'Data Analyst'),
  Skill(icon: Icons.settings, name: 'System Administrator'),
  Skill(icon: Icons.storage, name: 'Database Administrator'),
  Skill(icon: Icons.language, name: 'Translator'),
  Skill(icon: Icons.speaker, name: 'Public Speaker'),
  Skill(icon: Icons.book, name: 'Author'),
  Skill(icon: Icons.photo_camera, name: 'Photographer'),

];