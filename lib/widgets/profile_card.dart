import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,

            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mutuku',
                  style: Theme.of(context).textTheme.titleLarge ??
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Mobile Developer',
                  style: Theme.of(context).textTheme.bodyMedium ??
                      TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                Text(
                  '5 years of experience',
                  style: Theme.of(context).textTheme.bodyMedium ??
                      TextStyle(fontSize: 16.0, color: Colors.grey),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
