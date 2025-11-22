import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  final String text;
  final Function() onSave;
  final controller;
  const Dialogbox({
    super.key,
    required this.text,
    required this.onSave,
    this.controller,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.tealAccent,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: text,
              ),
              controller: controller,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: onSave, child: Text(text))
          ],
        ),
      ),
    );
  }
}
