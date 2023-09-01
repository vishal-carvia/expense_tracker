import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  final TextEditingController controller;
  final String text;

  const TitleField({super.key, required this.controller, this.text = "Title"});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(text),
      ),
    );
  }
}
