import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  final String child;

  Catalog({required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 70),
        height: 100,
        width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        shape: BoxShape.rectangle,
        color: Colors.green.shade50,
      ),
      child: Center(child: Text(child, style: TextStyle(fontSize: 20),)),
    ),
    );
  }
}
