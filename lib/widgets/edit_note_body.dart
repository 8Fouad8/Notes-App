import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note ;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
 String? title,content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              CustomAppbar(
                title: 'Edit Note',
                icon: Icons.check,
                backButton: true,
                onTap: () {
                  if(title != null || content != null){
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subtitle = content ?? widget.note.subtitle;
                    widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  }
                  Navigator.pop(context);
                }
              ),
              SizedBox(height: 16),
              CustomTextfield(
                hintText: 'Note Title',
                onChanged: (value) {
                  title = value;
                },
              ),
              SizedBox(height: 16.0),
              CustomTextfield(
                hintText: 'Note Content',
                onChanged: (value) {
                  content = value;
                },  
                maxline: 15,
              ),
  
            ],
          ),
        ),
      ],
    )

      ),
    );
  }
}
