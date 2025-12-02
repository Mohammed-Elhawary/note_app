import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/note_cubit.dart';

class ItemColorListView extends StatefulWidget {
  const ItemColorListView({super.key, this.isSelected = false});

  final bool isSelected;

  @override
  State<ItemColorListView> createState() => _ItemColorListViewState();
}

class _ItemColorListViewState extends State<ItemColorListView> {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,

        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ColorCard(
              color: colors[index],
              isSelected: currentIndex == index,
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {});
              },
            ),
          );
        },
      ),
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
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 23, backgroundColor: color),
          ),

          if (isSelected)
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white.withOpacity(0.3),
              child: Icon(Icons.check, color: Colors.white, size: 22),
            ),
        ],
      ),
    );
  }
}
