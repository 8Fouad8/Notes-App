import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextfield(hintText: 'Note Title'),
            SizedBox(height: 16.0),
         CustomTextfield(hintText: 'Note Content', maxline: 5,),
            SizedBox(height: 32.0),
           CustomButton(),
                       SizedBox(height: 32.0),

          ],      
        ),
      ),
    );
  }
}
