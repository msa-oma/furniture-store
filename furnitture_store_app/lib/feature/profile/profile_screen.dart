import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'profile',
          style: TextStyle(color: Colors.grey),
        ),
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
