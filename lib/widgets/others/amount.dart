import 'package:flutter/material.dart';

class AmountField extends StatelessWidget {
  final TextEditingController controller;
  final String text;

  const AmountField(
      {super.key, required this.controller, this.text = "Amount"});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      maxLength: 50,
      decoration: InputDecoration(
        prefixText: '\$',
        label: Text(text),
      ),
    );
  }
}
