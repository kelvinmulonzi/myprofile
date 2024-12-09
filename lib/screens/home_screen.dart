import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/profile_card.dart';
import '../widgets/skills_list.dart';
import 'about_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Get.to(() => AboutScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileCard(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Skills',
                style: Theme.of(context).textTheme.titleLarge ??
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SkillsList(),
          ],
        ),
      ),
    );
  }
}
