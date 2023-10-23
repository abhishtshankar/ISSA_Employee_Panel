import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';
import 'package:issa_employee_panel/src/views/drawer/drawer_items/group_notes/notes_library.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Builder(builder: (context) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              leading: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Image.asset('assets/icons/menu.png'),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: GestureDetector(
                    child: Image.asset('assets/icons/notifs.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 2, 18, 2),
                  child: GestureDetector(
                    child: Image.asset('assets/icons/chat.png'),
                  ),
                ),
              ],
            ),
            buildVSpacer(40),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Welcome, ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColors.kItemText1,
                    ),
                  ),
                  const Text(
                    'Jacob ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColors.kTextColor1,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/good_day.png',
                  ),
                ],
              ),
            ),
            buildVSpacer(40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'How can we help you today',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            buildVSpacer(40),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Assigned Patient',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Spacer(),
                  Text(
                    'VIEW ALL',
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(40),
            SizedBox(
              height: 150,
              width: double.maxFinite,
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    for (int i = 1; i < 4; i++)
                      buildPatientDetailsCard(
                        patientindex: i,
                        fromDate: '6 JUNE - ',
                        pateintAge: 32,
                        pateintRefId: 'CEN1TB9054 ',
                        size: size,
                      ),
                  ],
                ),
              ),
            ),
            buildVSpacer(20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  for (var elements in cardElements)
                    buildAppOptionCards(
                      image: elements['image'] as String,
                      title: elements['title'] as String,
                      // visible: true
                    ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  List<Map<String, String>> cardElements = [
    {
      'image': 'assets/images/home1.png',
      'title': 'Patient Chart',
    },
    {
      'image': 'assets/images/home2.png',
      'title': 'Prescription Renewal',
    },
    {
      'image': 'assets/images/home1.png',
      'title': 'Patient Tracking',
    },
  ];
}
