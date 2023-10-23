import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/views/bottom_navigations/bottom_navbar_items/assigned_patient.dart';
import 'package:issa_employee_panel/src/views/bottom_navigations/bottom_navbar_items/employment_information.dart';

import 'package:issa_employee_panel/src/views/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:issa_employee_panel/src/views/bottom_navigations/profile.dart';
import 'package:issa_employee_panel/src/views/drawer/app_drawer.dart';

class AppBottomNavBar extends StatefulWidget {
  int? index;
AppBottomNavBar({
  this.index,
    super.key,
  });

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _body = [
    const Home(),
    EmploymentInfo(),
    const AssignedPatient(),
    Profile(),
  ];
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = widget.index??0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      body: _body[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 10,
              offset: const Offset(0, -10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedItemColor: AppColors.kPrimaryColor,
            unselectedItemColor: AppColors.kButtonBackground1,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: (_selectedIndex == 0)
                    ? Image.asset('assets/icons/home_selected.png')
                    : Image.asset('assets/icons/home_unselected.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 1)
                    ? Image.asset('assets/icons/employment_info_selected.png')
                    : Image.asset(
                        'assets/icons/employment_info_unselected.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 2)
                    ? Image.asset('assets/icons/assigned_patient_selected.png')
                    : Image.asset(
                        'assets/icons/assigned_patient_unselected.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: (_selectedIndex == 3)
                    ? Image.asset('assets/icons/profile_selected.png')
                    : Image.asset('assets/icons/profile_unselected.png'),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
