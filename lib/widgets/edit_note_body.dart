import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_form.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: EditNoteForm(),
      ),
    );
  }
}
