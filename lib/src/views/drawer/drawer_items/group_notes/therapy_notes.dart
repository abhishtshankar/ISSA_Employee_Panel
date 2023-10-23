import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';
import 'package:issa_employee_panel/src/views/drawer/drawer_items/group_notes/therapy_notes_details.dart';


class TherapyNotes extends StatefulWidget {
  const TherapyNotes({super.key});

  @override
  State<TherapyNotes> createState() => _TherapyNotesState();
}

class _TherapyNotesState extends State<TherapyNotes> {
  final List<Map<String, dynamic>> _therapyNoteCardOptions = [
    {
      'image': 'assets/images/therapy_notes.png',
      'title': 'Therapy Notes',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/notes_lib.png',
      'title': 'Visitor Log',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/notes_lib.png',
      'title': 'Staff Schedule',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/notes_lib.png',
      'title': 'Mileage Log',
      'fillDetails': true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text('Therapy Notes'.toUpperCase(),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
        child: Wrap(
          spacing: 12,
          runSpacing: 18,
          children: <Widget>[
            for (var elements in _therapyNoteCardOptions)
              GestureDetector(
                onTap: () {
                  if (elements['title'] == 'Therapy Notes') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TherapyNotesDetails(),
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