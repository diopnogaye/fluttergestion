import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  final Map<String, String> task;

  TaskDetailsPage({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task["title"]!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(task["title"]!),
            SizedBox(height: 10),
            Text(
              "Description:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(task["description"]!),
          ],
        ),
      ),
    );
  }
}
