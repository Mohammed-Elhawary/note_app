import 'package:flutter/material.dart';

class ItemColorListView extends StatelessWidget {
  ItemColorListView({super.key, this.isSelected = false});

  final bool isSelected;
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ColorCard(
            color: colors[index],
            isSelected: isSelected && index == 0,
            onTap: () {},
          ),
        );
      },
    );
  }
}

class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key,
    required this.color,
    required this.isSelected,
    this.onTap,
  });

  final Color color;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(radius: 22, backgroundColor: color),

          if (isSelected)
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.white.withOpacity(0.3),
              child: Icon(Icons.check, color: Colors.white, size: 22),
            ),
        ],
      ),
    );
  }
}
