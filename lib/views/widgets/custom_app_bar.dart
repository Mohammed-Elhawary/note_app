import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Notes", style: TextStyle(fontSize: 30)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30)),
        ],
      ),
    );
  }
}
