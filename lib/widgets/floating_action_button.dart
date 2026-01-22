import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            isDismissible: false,
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddNoteBottomSheet(),
              );
            },
          );
        },
        child: Icon(Icons.add, size: 32,color: Colors.white,),
      );
  }
}