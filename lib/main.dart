import 'package:flutter/material.dart';
import 'package:notification_page/notification_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: NotificationPage()),
    );
  }
}
