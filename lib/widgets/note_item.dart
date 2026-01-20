import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.pushNamed(context, EditNoteView.id);
    },
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0, ),
        decoration: BoxDecoration(
          color: const Color(0xFFFFCC80),
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
              title: Text('Note Title', style: TextStyle(color: Colors.black ,fontWeight: FontWeight.w500,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Note Content', style: TextStyle(color: Colors.black54,fontSize: 18),),
              ),
              trailing: Icon(Icons.delete, color: Colors.black,size: 28,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text("6th Dec 2025", style: TextStyle(color: Colors.black45, fontSize: 16),),
            ),
          ],
        ),
      ),
    );
  }
}