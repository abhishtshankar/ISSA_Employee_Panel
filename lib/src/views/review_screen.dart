import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/custom_checkbox.dart';
import 'package:issa_employee_panel/src/common/widget/custom_text.dart';
import 'package:issa_employee_panel/src/common/widget/custom_text_box.dart';


class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: CustomText(title: 'EMPLOYEE PERFORMANCE REVIEW',),
        ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomText(title: 'Employee Information:'),
            SizedBox(height: 10,),
            CustomText(title: 'Name',),
            SizedBox(height: 10,),
            CustomTextBox(title: 'Enter your Lorem Ipsum',),
            CustomText(title: 'Date',),
            SizedBox(height: 10,),
            CustomTextBox(title: 'Enter your Lorem Ipsum',),
            CustomText(title: 'Job Title',),
            SizedBox(height: 10,),
            CustomTextBox(title: 'Enter your Lorem Ipsum',),
            CustomText(title: 'Manager',),
            SizedBox(height: 10,),
            CustomTextBox(title: 'Enter your Lorem Ipsum',),
            CustomText(title: 'Type Of Review',),
            CustomCheckBoxGroup(),
            CustomText(title: 'Hire Date',),
            SizedBox(height: 10,),
            CustomTextBox(title: 'Enter your Lorem Ipsum',),
            CustomText(title: 'Review Period:',),
            SizedBox(height: 10,),
            Center(child: CustomText(title: 'Rating Criteria',)),

          ],
        ),
      ),
    );
  }
}
