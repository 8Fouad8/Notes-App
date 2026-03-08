import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.amber
    );
  }
}

class ColorsList extends StatelessWidget {
  const ColorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:60,
      child: ListView.builder(
        itemBuilder: (context, index) => const ColorItem(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}