import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
     decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(icon, size: 28,color:kPrimaryColor,),
    );
  }
}