import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_app_body.dart';

class NotesAppView extends StatelessWidget {
  const NotesAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesAppBody(),
    );  
  }
}