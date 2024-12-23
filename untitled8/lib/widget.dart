import 'package:flutter/material.dart';

class staticTextField extends StatelessWidget {
  const staticTextField({super.key, required this.controller, required this.label});
    final TextEditingController controller;
    final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(

            ),
            label: Text(label )
        ),
      ),
    );
  }
}
