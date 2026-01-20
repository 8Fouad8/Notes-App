import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key,  this.maxline = 1, required this.hintText});
final int maxline ;
final String hintText ;
  @override
  Widget build(BuildContext context) {
    return   TextField(
      cursorColor: kPrimaryColor,
            maxLines: maxline,
            decoration: InputDecoration(
              hintText: hintText,
              border: borderSettings(),
              enabledBorder: borderSettings(),
              focusedBorder: borderSettings(color: kPrimaryColor),
              
            ),
          );
  }

   OutlineInputBorder borderSettings({Color color = Colors.white}) {
    return OutlineInputBorder(
              
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: color,
              ),
            );
  }
}