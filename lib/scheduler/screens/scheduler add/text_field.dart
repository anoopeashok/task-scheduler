import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(this.controller);
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      textAlign: TextAlign.end,
      style: const TextStyle(fontSize: 14),
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(4),
          filled: true,
          isDense: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(borderSide: BorderSide.none)),
      controller: controller,
    );
  }
}
