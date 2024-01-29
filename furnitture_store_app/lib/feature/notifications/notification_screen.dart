import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.grey),
        ),
        actions: const [
          Icon(Icons.question_mark_sharp),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
