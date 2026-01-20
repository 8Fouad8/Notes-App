import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteForm extends StatefulWidget {
  const EditNoteForm({super.key});

  @override
  State<EditNoteForm> createState() => _EditNoteFormState();
}
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

class _EditNoteFormState extends State<EditNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppbar(
                  title: 'Edit Note',
                  icon: Icons.check,
                  backButton: true,
                ),
                SizedBox(height: 16),
                CustomTextfield(
                  hintText: 'Note Title',
                  onsaved: (value) {
                    title = value;
                  },
                ),
                SizedBox(height: 16.0),
                CustomTextfield(
                  hintText: 'Note Content',
                  onsaved: (value) {
                    content = value;
                  },
                  maxline: 15,
                ),
                SizedBox(height: 24.0),
                CustomButton(buttonText: 'Save', onTap: () { 
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                 },
            
                )
              ],
            ),
          ),
        );
  }
}