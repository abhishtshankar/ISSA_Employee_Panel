import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';
import 'package:issa_employee_panel/src/views/drawer/drawer_items/group_notes/notes_library.dart';
import 'package:issa_employee_panel/src/views/drawer/drawer_items/group_notes/therapy_notes.dart';

class GroupNotes extends StatefulWidget {
  const GroupNotes({super.key});

  @override
  State<GroupNotes> createState() => _GroupNotesState();
}

class _GroupNotesState extends State<GroupNotes> {
  final List<Map<String, dynamic>> _groupNoteCardOptions = [
    {
      'image': 'assets/images/therapy_notes.png',
      'title': 'Therapy Notes',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/notes_lib.png',
      'title': 'Notes Library',
      'fillDetails': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          'Group Notes'.toUpperCase(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
        child: Wrap(
          spacing: 12,
          runSpacing: 18,
          children: <Widget>[
            for (var elements in _groupNoteCardOptions)
              GestureDetector(
                onTap: () {
                  if (elements['title'] == 'Therapy Notes') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TherapyNotes(),
                      ),
                    );
                  }
                  if (elements['title'] == 'Notes Library') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotesLibrary(),
                      ),
                    );
                  }
                },
                child: buildAppOptionCards(
                  image: elements['image'],
                  title: elements['title'],
                  fillDetails: elements['fillDetails'],
                  upload: null,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
