import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_app_view.dart';
import 'package:notes_app/widgets/test.dart';

void main() async
{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(DevicePreview(builder: (context) => const NotesApp()));
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView(),
        GridVieww.id: (context) => const GridVieww(),
      },
      initialRoute: GridVieww.id,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color.fromARGB(255, 46, 46, 48),
      ),
      home: const GridVieww(),
    );
  }
}
