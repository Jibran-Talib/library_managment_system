import 'package:flutter/material.dart';
import 'package:library_managment_system/home_screen.dart';

class MyWidget extends HomeScreen {
  const MyWidget({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text('title'),
          )
        ],
      ),
    );
  }
}
