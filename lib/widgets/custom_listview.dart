import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric( vertical: 4.0),
          child: NoteItem(),
        );
      },
    );
  }
}