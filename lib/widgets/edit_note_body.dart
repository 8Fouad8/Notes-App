import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            CustomAppbar(title: 'Edit Note', icon: Icons.check, backButton: true),
            SizedBox(height: 16),
            CustomTextfield(hintText: 'Note Title'),
            SizedBox(height: 16.0),
            CustomTextfield(hintText: 'Note Content', maxline: 5),
            SizedBox(height: 24.0),
          ],
        ),
      ),
    );
  }
}
