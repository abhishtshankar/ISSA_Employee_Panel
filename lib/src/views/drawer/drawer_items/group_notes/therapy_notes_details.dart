import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_buttons.dart';
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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          'Therapy Notes'.toUpperCase(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
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
                            value:
                                _therapyType == TherapyType.individualTherapy,
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
                  ),
                  buildVSpacer(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
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
                  ),
                  buildVSpacer(20),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 20),
                    width: double.maxFinite,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Resident's Name:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        buildVSpacer(20),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          height: 50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: PopupMenuButton(
                              offset: Offset(size.width, 25),
                              itemBuilder: (context) {
                                return <PopupMenuEntry<dynamic>>[
                                  PopupMenuItem(
                                    child: buildCheckLists(
                                      header: '',
                                      optionList: _residentNames,
                                    ),
                                  ),
                                ];
                              },
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      'Select Resident',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Today’s Date:',
                    hintText: '9/20/2022',
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Start time::',
                    hintText: '1pm',
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'End time:',
                    hintText: '2pm',
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Total Duration: ',
                    hintText: '1hr',
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Behavioral Health Technician:',
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Location:',
                  ),
                  buildVSpacer(20),
                  const Text(
                    'Session Summary',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  buildVSpacer(20),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Topic:',
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Note Summary:',
                    inputContainerHeight: 100,
                    expands: true,
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Recommendation:',
                    inputContainerHeight: 100,
                    expands: true,
                  ),
                  buildVSpacer(20),
                  const Text(
                    'Individual Participant Notes',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  buildVSpacer(20),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Name:',
                    hintText: 'Carol Martineau',
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Attitude:',
                    optionList: _attitudeCheckList,
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Resident Completed Therapy Session:',
                    optionList: _resComThList,
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Were there any treatment goals addressed:',
                    optionList: _treatmentGoalAddressed,
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Resident Participation:',
                    optionList: _residentParticipationList,
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Resident Quality:',
                    optionList: _residentQuality,
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Resident Appearence:',
                    optionList: _residentAppearence,
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Resident Mood:',
                    optionList: _residentMood,
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Resident Progress:',
                    optionList: _residentProgress,
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Resident Response:',
                  ),
                  buildCheckLists(
                    hMargin: 18,
                    header: 'Any significant information not specified above:',
                    optionList: _notAddressedAbove,
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Please specify:',
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Date:',
                    hintText: '9/20/2022',
                  ),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Behavioral Health Technician Name & Signature:',
                  ),
                  buildUploader(size: size),
                  buildCustomTextField1(
                    hMargin: 18,
                    header: 'Behavioral Health Professional Name & Signature:',
                  ),
                  buildUploader(size: size),
                  buildVSpacer(50),
                  buildPrintButton(),
                  buildVSpacer(100),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }

  final List<String> _residentNames = [
    for (int i = 0; i < 3; i++) ...[
      'Carol Martineau',
      'Demetria Martinez',
    ],
  ];

  final List<String> _notAddressedAbove = [
    'No',
    'Yes',
  ];

  final List<String> _residentProgress = [
    'Deterioration',
    'No Progress',
    'Small Progress',
    'Good Progress',
    'Goal Achieved',
  ];

  final List<String> _residentMood = [
    'Normal',
    'Euthymic',
    'Anxious',
    'Depressed',
    'Euphoric',
    'Irritable',
  ];

  final List<String> _residentAppearence = [
    'Neat',
    'Unkept',
    'Inappropriate',
    'Bizarre',
    'Other',
  ];

  final List<String> _residentQuality = [
    'Attentive',
    'Supportive',
    'Sharing',
    'Intrusive',
    'Resistant',
  ];

  final List<String> _residentParticipationList = [
    '100%',
    '75%',
    '50%',
    '25%',
    'None',
  ];

  final List<String> _treatmentGoalAddressed = [
    'Cooperative',
    'Focused',
    'Suspicious',
    'Distracted',
  ];

  final List<String> _resComThList = [
    'Yes',
    'No',
  ];

  final List<String> _attitudeCheckList = [
    'Cooperative',
    'Focused',
    'Suspicious',
    'Distracted',
  ];

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
          color:
              value ? AppColors.kPrimaryColor : Colors.black.withOpacity(0.6),
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
