import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_buttons.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.kTextColor1,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/profile.png',
                      ),
                    ),
                  ),
                ),
                buildVSpacer(10),
                const Text(
                  'Jacob Smith',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                buildVSpacer(10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'STATUS : ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: AppColors.kItemText1,
                        ),
                      ),
                      const TextSpan(
                        text: 'EMPLOYEE 1',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          color: Color(0xFF4DAF4E),
                        ),
                      ),
                    ],
                  ),
                ),
                buildVSpacer(20),
                AppButtons.secondaryButton(
                  text: 'SIGN OUT',
                  onPressed: () {},
                  buttonRadius: 10,
                  borderColor: AppColors.kTextColor1,
                  textColor: AppColors.kTextColor1,
                ),
                buildVSpacer(20),
                for(int i=0; i<12; i++)
                ListTile(
                  leading: Image.asset(
                    'assets/icons/employment_application.png',
                  ),

                  title: const Text(
                    'Employment Application ',
                  ),
                  titleTextStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.black.withOpacity(0.8)
                    ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
