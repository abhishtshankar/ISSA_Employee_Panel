import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';

class AssignedPatient extends StatelessWidget {
  const AssignedPatient({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              leading: const BackButton(),
              title: const Text('ASSIGNED PATIENTS'),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              height: 38,
              width: double.maxFinite,
              child: TabBar(
                unselectedLabelColor: AppColors.kItemText1,
                labelColor: AppColors.kTextColor1,
                indicatorColor: AppColors.kTextColor1,
                tabs: const <Widget>[
                  Tab(
                    text: 'UPCOMING',
                  ),
                  Tab(
                    text: 'PAST',
                  ),
                ],
              ),
            ),
            buildVSpacer(30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Patients that are assigned to Staff',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            buildVSpacer(30),
            SizedBox(
              height: size.height * 0.6,
              width: size.width,
              child: TabBarView(
                
                children: [
                 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      for (int i = 0; i < 3; i++)
                        buildPatientDetailsCard(
                          patientindex: i + 1,
                          fromDate: '6 JUNE - ',
                          pateintAge: 32,
                          pateintRefId: 'CEN1TB9054 ',
                          size: size,
                        ),
                    ],
                  ),

             
                   Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      for (int i = 0; i < 3; i++)
                        buildPatientDetailsCard(
                          patientindex: i + 1,
                          fromDate: '6 JUNE - ',
                          pateintAge: 32,
                          pateintRefId: 'CEN1TB9054 ',
                          size: size,
                        ),
                    ],),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
