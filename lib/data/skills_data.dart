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
];