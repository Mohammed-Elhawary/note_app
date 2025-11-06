import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 24, left: 16),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 222, 189, 90),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Flutter tips",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 24),
                child: Text(
                  "Every thing in Flutter is widget",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "21 may 2022",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withAlpha(125),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
