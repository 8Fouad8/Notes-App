import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.icon,
    this.backButton = false,
  });
  final String title;
  final IconData icon;
  final bool backButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (backButton)
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 28),
          ),
        SizedBox(width: 10),
        Text(title, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
