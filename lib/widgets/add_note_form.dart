import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteform extends StatefulWidget {
  const AddNoteform({super.key});

  @override
  State<AddNoteform> createState() => _AddNoteformState();
}

class _AddNoteformState extends State<AddNoteform> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 40),
              CustomTextField(
                onSaved: (value) {
                  title = value;
                },
                hint: 'Title',
              ),
              const SizedBox(height: 16),
              CustomTextField(
                onSaved: (value) {
                  subTitle = value;
                },
                hint: 'Content',
                maxLines: 5,
              ),
              const SizedBox(height: 32),
              Custombutton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}


