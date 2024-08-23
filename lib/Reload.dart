import 'package:flutter/material.dart';
class Reload extends StatelessWidget {
  final VoidCallback Back;
  Reload({required this.Back});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      child: Text(
        'Reload',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.red),
      ),
      onPressed:Back,
    );
  }
}
