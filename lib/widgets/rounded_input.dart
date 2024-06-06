import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String)? onSubmit;

  const RoundedInput({
    super.key,
    required this.hintText,
    this.controller,
    this.onSubmit,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
      ),
      onSubmitted: onSubmit,
    );
  }
}
