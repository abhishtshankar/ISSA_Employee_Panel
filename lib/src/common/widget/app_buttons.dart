import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';

class AppButtons {
  static Container primaryButton(
      {required String text, required VoidCallback onPressed}) {
    return Container(
      // margin: const EdgeInsets.symmetric(
      //   horizontal: 18,
      //   vertical: 18,
      // ),
      height: 43,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }

  static GestureDetector secondaryButton(
      {required String text, required VoidCallback onPressed, double? buttonRadius, Color? borderColor, Color? textColor,}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 18,
        //   vertical: 18,
        // ),
        height: 43,
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(buttonRadius??5),
            border: Border.all(
              color: borderColor?? AppColors.kPrimaryColor,
            )),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: textColor?? AppColors.kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
