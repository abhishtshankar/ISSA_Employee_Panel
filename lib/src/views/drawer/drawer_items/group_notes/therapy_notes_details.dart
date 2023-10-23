import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';

class TherapyNotesDetails extends StatefulWidget {
  const TherapyNotesDetails({super.key});

  @override
  State<TherapyNotesDetails> createState() => _TherapyNotesDetailsState();
}

enum TherapyType {
  groupTherapy,
  individualTherapy,
}

enum TherapyMode {
  inPerson,
  telehealth,
}

class _TherapyNotesDetailsState extends State<TherapyNotesDetails> {
  TherapyType? _therapyType = TherapyType.groupTherapy;
  TherapyMode? _therapyMode = TherapyMode.inPerson;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          'Therapy Notes'.toUpperCase(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: _buildRadioTiles(
                    title: 'Group Therapy',
                    value: _therapyType == TherapyType.groupTherapy,
                    onChanged: (p0) {
                      setState(() {
                        _therapyType = TherapyType.groupTherapy;
                      });
                    },
                  ),
                ),
                buildHSpacer(10),
                Expanded(
                  child: _buildRadioTiles(
                    value: _therapyType == TherapyType.individualTherapy,
                    title: 'Individual Therapy',
                    onChanged: (p0) {
                      setState(() {
                        _therapyType = TherapyType.individualTherapy;
                      });
                    },
                  ),
                ),
              ],
            ),
            buildVSpacer(20),
            Row(
              children: <Widget>[
                Expanded(
                  child: _buildRadioTiles(
                    title: 'In Person',
                    value: _therapyMode == TherapyMode.inPerson,
                    onChanged: (p0) {
                      setState(() {
                        _therapyMode = TherapyMode.inPerson;
                      });
                    },
                  ),
                ),
                buildHSpacer(10),
                Expanded(
                  child: _buildRadioTiles(
                    value: _therapyMode == TherapyMode.telehealth,
                    title: 'Telehealth',
                    onChanged: (p0) {
                      setState(() {
                        _therapyMode = TherapyMode.telehealth;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildRadioTiles({
    required bool value,
    required String title,
    void Function(bool?)? onChanged,
  }) {
    return Container(
      height: 72,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppColors.kPrimaryColor,
        ),
      ),
      child: Center(
        child: ListTile(
          leading: Transform.scale(
            scale: 1.2,
            child: Radio(
              value: value,
              groupValue: true,
              onChanged: onChanged,
              activeColor: AppColors.kPrimaryColor,
            ),
          ),
          minLeadingWidth: 30,
          title: Text(
            title,
            style: TextStyle(
              color: value
                  ? AppColors.kPrimaryColor
                  : Colors.black.withOpacity(0.6),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }
}
