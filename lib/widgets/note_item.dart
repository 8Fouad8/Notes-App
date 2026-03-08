import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
final NoteModel note ; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.pushNamed(context, EditNoteView.id);
    },
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0, ),
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(10),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title, style: TextStyle(color: Colors.black ,fontWeight: FontWeight.w500,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(note.subtitle, style: TextStyle(color: Colors.black54,fontSize: 18),),
              ),
              trailing: Icon(Icons.delete, color: Colors.black,size: 28,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(note.date, style: TextStyle(color: Colors.black45, fontSize: 16),),
            ),
          ],
        ),
      ),
    );
  }
}