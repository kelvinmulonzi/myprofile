import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myprofile/main.dart';

void main() {
  testWidgets('Home screen displays profile and skills', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyProfileApp());

    // Verify the presence of profile card components.
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Mobile Developer'), findsOneWidget);

    // Verify the presence of skills.
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('UI/UX Designer'), findsOneWidget);
    expect(find.text('Cybersecurity Enthusiast'), findsOneWidget);

    // Verify the presence of navigation icon.
    expect(find.byIcon(Icons.info), findsOneWidget);
  });
}
