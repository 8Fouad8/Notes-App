import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_app_view.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const NotesApp()));
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
brightness: Brightness.dark,
fontFamily: 'Poppins',
scaffoldBackgroundColor: const Color.fromARGB(255, 46, 46, 48)
      ),
      home: NotesAppView()
    );
  }
}
