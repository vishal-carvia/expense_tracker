import 'package:flutter/material.dart';

import '../../models/expense.dart';

class DropdownButtonCustom extends StatefulWidget {
  final void Function(Category) updateSelectedCategory;

  const DropdownButtonCustom({super.key, required this.updateSelectedCategory});

  @override
  State<DropdownButtonCustom> createState() => _DropdownButtonCustomState();
}

class _DropdownButtonCustomState extends State<DropdownButtonCustom> {
  Category intialValue = Category.food;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: intialValue,
        items: Category.values
            .map(
              (category) => DropdownMenuItem(
                value: category,
                child: Text(
                  category.name.toUpperCase(),
                ),
              ),
            )
            .toList(),
        onChanged: (value) {
          if (value == null) {
            return;
          }
          intialValue = value;
          widget.updateSelectedCategory(value);
        });
  }
}
