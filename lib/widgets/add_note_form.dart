
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextfield(onsaved: (value) { title = value; }, hintText: 'Note Title'),
          SizedBox(height: 16.0),
       CustomTextfield(onsaved: (value) { subtitle = value; }, hintText: 'Note Content', maxline: 5,),
          SizedBox(height: 32.0),
         CustomButton(buttonText: 'Add', onTap: () {  
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      NoteModel newNote = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(), color: Colors.amber.toARGB32(),
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(newNote);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
         },),
                     SizedBox(height: 32.0),
      
        ],      
      ),
    );
  }
}
