import 'package:flutter/material.dart';
class ActionButton extends StatelessWidget {
  final String value;
  final VoidCallback action;
  ActionButton({required this.action, required this.value});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      child: Text(
        value,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      onPressed: action,
    );
  }
}
