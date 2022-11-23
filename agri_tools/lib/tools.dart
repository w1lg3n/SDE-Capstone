import 'package:flutter/material.dart';

class Toolset extends StatelessWidget {
  final String child;
  Toolset({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade300,
          borderRadius: BorderRadius.circular(30),
        ),
        height: 100,
        child: Center(child: Text(child, style: TextStyle(fontSize: 40),)),
      ),
    );
  }
}


