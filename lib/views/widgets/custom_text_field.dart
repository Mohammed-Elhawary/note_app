import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChange,
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: TextStyle(color: kPrimary, fontSize: 16),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimary),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
