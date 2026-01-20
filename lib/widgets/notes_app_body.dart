import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_listview.dart';

class NotesAppBody extends StatelessWidget {
  const NotesAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            CustomAppbar(title: 'Notes', icon: Icons.search),
            SizedBox(height: 16,),
            
            Expanded(child: CustomListview()),
                 ],
        ),
      ),
     
    );
  }
}
