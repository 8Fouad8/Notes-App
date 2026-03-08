import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_listview.dart';

class NotesAppBody extends StatefulWidget {
  const NotesAppBody({super.key});

  @override
  State<NotesAppBody> createState() => _NotesAppBodyState();
}

class _NotesAppBodyState extends State<NotesAppBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            CustomAppbar(title: 'Notes', icon: Icons.search),
            SizedBox(height: 16),
      
            Expanded(child: CustomListview()),
          ],
        ),
      ),
    );
  }
}
