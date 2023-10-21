import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_buttons.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';
import 'package:issa_employee_panel/src/views/auth/signup.dart';

class EmploymentApplication extends StatefulWidget {
  const EmploymentApplication({super.key});

  @override
  State<EmploymentApplication> createState() => _EmploymentApplicationState();
}

class _EmploymentApplicationState extends State<EmploymentApplication> {
  final List<String> _pageHeaders = [
    'BASIC INFORMATION',
    'EDUCATIONAL BACKGROUND',
    'EMPLOYMENT HISTORY',
    'OTHER INFORMATION',
    'ACKNOWLEDGEMENT',
  ];

  int _currentPageIndex = 0;
  int _lastYearCompleted = 0;
  final bool _isGraduated = false;
  final bool _servedInArmedForces = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            (_currentPageIndex != 0)
                ? setState(() {
                    _currentPageIndex--;
                  })
                : Navigator.pop(context);
          },
        ),
        title: const Text('EMPLOYEMENT APPLICATION'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  buildVSpacer(20),
                  _buildPageHeader(title: _pageHeaders[_currentPageIndex]),
                  buildVSpacer(20),
                  _buildScreenCounter(
                      numberOfScreens: 5, currentPage: _currentPageIndex),
                  buildVSpacer(20),
                  Visibility(
                    visible: _currentPageIndex == 0,
                    child: _buildBasicInformation(),
                  ),
                  Visibility(
                    visible: _currentPageIndex == 1,
                    child: _buildEducationalBackground(),
                  ),
                  Visibility(
                    visible: _currentPageIndex == 2,
                    child: _buildEmploymentHistory(),
                  ),
                  Visibility(
                    visible: _currentPageIndex == 3,
                    child: _buildOtherInformation(),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // height: 100,
              width: size.width,
              color: Colors.white,
              padding: const EdgeInsets.all(18.0),
              child: AppButtons.primaryButton(
                text: 'NEXT',
                onPressed: () {
                  setState(() {
                    _currentPageIndex++;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildTextContainer(
          {required String header, required String content}) =>
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        width: double.maxFinite,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              header,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
            buildVSpacer(20),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
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
                child: Text(
                  content,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  _buildTextHeader2({required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title.toUpperCase(),
          style: const TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }

  Column _buildOtherInformation() => Column(
                      children: <Widget>[
                        _buildTextHeader2(title: 'MILITARY EXPERIENCE'),
                        buildVSpacer(20),
                        _buildTextHeader(
                            title: 'Have you ever served in the armed forces?'),
                        _buildYesNoBlock(value: _servedInArmedForces),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'If yes, which speciality?',
                          headerSize: 14,
                        ),
                        _buildTextContainer(
                          header: 'Date Entered',
                          content: 'Tue Dec 20',
                        ),
                        _buildTextContainer(
                          header: 'Date Discharged',
                          content: 'Tue Dec 20',
                        ),
                        _buildTextHeader(
                          title:
                              'Are you currently a member of the national guard?',
                        ),
                        _buildYesNoBlock(value: true),
                        _buildTextHeader(
                          title: 'Do you have a Valid Driver’s License',
                        ),
                        _buildYesNoBlock(value: _servedInArmedForces),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'Driver’s License Number',
                          headerSize: 14,
                        ),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'Class',
                          headerSize: 14,
                        ),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'State Issued',
                          headerSize: 14,
                        ),
                        buildVSpacer(20),
                        _buildTextHeader2(title: 'FOR OFFICE POSITIONS ONLY'),
                        buildVSpacer(20),
                        _buildTextHeader(
                          title: 'Do you have typing skills on the computer?',
                        ),
                        _buildYesNoBlock(value: true),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'Words Per Minute',
                          headerSize: 14,
                        ),
                        buildVSpacer(20),
                        _buildTextHeader(
                          title:
                              'Are you familiar with using Microsoft Word, Microsoft Excel, etc?',
                        ),
                        _buildYesNoBlock(value: true),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'Other skills:',
                          headerSize: 14,
                        ),
                        buildVSpacer(20),
                        _buildTextHeader2(title: '3 PROFESSIONAL REFERENCES'),
                        buildVSpacer(10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: AppColors.kPrimaryColor,
                                ),
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                        color: AppColors.kPrimaryColor,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: AppColors.kPrimaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        buildVSpacer(10),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'Full Name',
                          headerSize: 14,
                        ),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'Address',
                          headerSize: 14,
                        ),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'Company ',
                          headerSize: 14,
                        ),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'Phone Number ',
                          headerSize: 14,
                        ),
                        buildCustomTextField1(
                          hMargin: 18,
                          header: 'How long have you known him/her?',
                          headerSize: 14,
                        ),
                        buildVSpacer(100),
                      ],
                    );

  Column _buildEmploymentHistory() => Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Please list your work experience in the past five (5) years, beginning with the most recent job held. If you were self-employed, give firm name. Attach additional sheets if necessary. Please do not write “see resume”.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'Employer Name',
            headerSize: 14,
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'Street Address',
            headerSize: 14,
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'City',
            headerSize: 14,
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'State',
            headerSize: 14,
          ),
          buildVSpacer(100),
        ],
      );

  _buildYesNoBlock({required bool value}) {
    return StatefulBuilder(
      builder: ((context, setState) => Row(
            children: <Widget>[
              for (int i = 0; i < 2; i++)
                Expanded(
                  child: RadioListTile(
                    value: value,
                    groupValue: null,
                    onChanged: (currentValue) {
                      log('currentValue: $currentValue');
                      setState(() {
                        value = currentValue as bool;
                      });
                    },
                    title: Text((i == 0) ? 'Yes' : 'No'),
                    activeColor: AppColors.kPrimaryColor,
                  ),
                ),
            ],
          )),
    );
  }

  Column _buildEducationalBackground() => Column(
        children: <Widget>[
          _buildTextHeader(
            title: 'Level',
            size: 16,
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'High School Name',
            headerSize: 14,
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'Complete Address',
            headerSize: 14,
          ),
          _buildTextHeader(
            title: 'Last year completed',
          ),
          buildVSpacer(10),
          for (int i = 1; i < 5; i++)
            RadioListTile(
              value: _lastYearCompleted,
              groupValue: i,
              onChanged: (currentValue) {
                setState(() {
                  _lastYearCompleted = i;
                });
              },
              title: Text('$i'),
              activeColor: AppColors.kPrimaryColor,
            ),
          buildVSpacer(20),
          _buildTextHeader(
            title: 'Did you graduate?',
          ),
          _buildYesNoBlock(
            value: _isGraduated,
          ),
          buildVSpacer(100),
        ],
      );

  Column _buildBasicInformation() => Column(
        children: <Widget>[
          buildCustomTextField1(
            hMargin: 18,
            header: 'Today’s Date',
            headerSize: 14,
          ),
          // buildVSpacer(20),
          buildCustomTextField1(
            hMargin: 18,
            header: 'Hire Date:',
            headerSize: 14,
          ),
          _buildTextHeader(
            title: 'Name',
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'Last',
            headerSize: 14,
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'First',
            headerSize: 14,
          ),
          buildCustomTextField1(
            hMargin: 18,
            header: 'Middle',
            headerSize: 14,
          ),
          buildVSpacer(100),
        ],
      );

  _buildScreenCounter(
      {required int numberOfScreens, required int currentPage}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (int i = 0; i < numberOfScreens; i++)
          Container(
            margin: const EdgeInsets.all(2.5),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: (i <= currentPage)
                  ? AppColors.kPrimaryColor
                  : AppColors.kInputFieldGrey,
            ),
          ),
      ],
    );
  }

  _buildTextHeader({
    required String title,
    double? size,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: size ?? 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }

  _buildPageHeader({required String title}) {
    return Text(
      title.toUpperCase(),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
      ),
    );
  }
}
