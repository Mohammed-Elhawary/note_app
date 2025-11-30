import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 48,
        decoration: BoxDecoration(
          color: kPrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child:
              isLoading
                  ? SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(color: Colors.black),
                  )
                  : Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        ),
      ),
    );
  }
}
