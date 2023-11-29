import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(200, 255, 200, 1),
      body: Center(child: Text("Profile Tab",style: TextStyle(fontSize: 25),),),);
  }
}