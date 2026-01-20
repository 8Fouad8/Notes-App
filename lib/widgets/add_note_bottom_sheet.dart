import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
      listener: (context, state) {
        if(state is AddNoteCubitFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        } 
        else if (state is AddNoteCubitSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (BuildContext context, AddNoteCubitState state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddNoteCubitLoading ? true : false,
          opacity: 0.6,
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
            child: AddNoteForm(),
          ),
        );
      },
    );
  }
}
