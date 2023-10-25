import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/views/chat_screen.dart';
import 'package:issa_employee_panel/src/views/auth/login.dart';
import 'package:issa_employee_panel/src/views/drawer/drawer_items/group_notes/notes_library.dart';
import 'package:issa_employee_panel/src/views/review_screen.dart';
import 'package:issa_employee_panel/src/views/time_sheet.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ISSAEmployeePanel());
}


class ISSAEmployeePanel extends StatelessWidget {
  const ISSAEmployeePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF1A9FB2),
        iconTheme: const IconThemeData(
          color: Color(0xFF1A9FB2),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF1A9FB2),
          ),
        ),
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontFamily: 'Poppins',
          ),
        ),
        primaryTextTheme: const TextTheme(
          titleMedium: TextStyle(
            color: Color(0xFF1A9FB2),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: Color(0xFF1A9FB2),
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColors.kTextColor1,

          ),
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: AppColors.kTextColor1,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: const Color(0xFF1A9FB2),
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1A9FB2),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            textStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),

      home: const ReviewScreen(),
    );
  }
}