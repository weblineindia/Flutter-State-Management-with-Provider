import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(200, 200, 255, 1),
      body: Center(child: Text("Category Tab",style: TextStyle(fontSize: 25)),),);
  }
}