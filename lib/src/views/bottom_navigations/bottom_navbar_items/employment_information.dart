import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';
import 'package:issa_employee_panel/src/views/drawer/drawer_items/employment_application.dart';

class EmploymentInfo extends StatelessWidget {
  EmploymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppBar(
            leading: const BackButton(),
            title: const Text('EMPLOYMENT INFORMATION'),
          ),
          buildVSpacer(20),

          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Text(
              'Uploaded Documents Below :',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          buildVSpacer(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Wrap(
              spacing: 12,
              runSpacing: 18,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Navigate to EMPLOYMENT APPLICATION SCREEN
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EmploymentApplication(),
                      ),
                    );
                  },
                  child: buildAppOptionCards(
                    image: 'assets/images/home1.png',
                    title: 'Application',
                    fillDetails: true,
                  ),
                ),
                for (var elements in _cardValues)
                  buildAppOptionCards(
                    image: elements['image'],
                    title: elements['title'],
                    fillDetails: elements['fillDetails'],
                    upload: elements['upload'],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> _cardValues = [
    {
      'image': 'assets/images/home2.png',
      'title': 'Personal Information',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei1.png',
      'title': 'Offer Letter',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei2.png',
      'title': 'Appendix',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei2.png',
      'title': '2023 Forms',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei3.png',
      'title': 'Reference Check',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei4.png',
      'title': 'LRC-1034A',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei4.png',
      'title': 'Job Description',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei4.png',
      'title': 'fw4',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei5.png',
      'title': 'APS Consent',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei6.png',
      'title': 'Termination',
      'upload': true,
    },
    {
      'image': 'assets/images/ei4.png',
      'title': 'fw9',
      'fillDetails': true,
    },
    {
      'image': 'assets/images/ei4.png',
      'title': 'i-9',
      'fillDetails': true,
    },
  ];
}
