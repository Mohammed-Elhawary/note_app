import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      decoration: BoxDecoration(
        color: kPrimary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
