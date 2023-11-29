import 'package:flutter/material.dart';

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(255, 200, 200, 1),
      body: Center(child: Text("Notification Tab",style: TextStyle(fontSize: 25)),),);
  }
}