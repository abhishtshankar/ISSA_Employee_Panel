import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:issa_employee_panel/src/common/widget/custom_documentUpload.dart';
import 'package:issa_employee_panel/src/common/widget/custom_text.dart';
import 'package:issa_employee_panel/src/common/widget/custom_text_box.dart';
import 'package:issa_employee_panel/src/common/widget/dateInput_widget.dart';

class MileagelogScreen extends StatefulWidget {
  const MileagelogScreen({super.key});

  @override
  State<MileagelogScreen> createState() => _MileagelogScreenState();
}

class _MileagelogScreenState extends State<MileagelogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:70,bottom:20, left: 10),
              child: Row(
                children: [
                  Icon(Icons.arrow_back,size: 28, color: Color(0XFF1A9FB2)),
                  SizedBox(width: 10),
                  Text('MILEAGE LOG', style: TextStyle(fontSize:18,color: Color(0XFF0C5C75)),
                  ),
                ],
              ),
            ),
            CustomText(title: 'Date'),
             DateInputField(),
            CustomText(title: 'Resident Initials'),
            CustomTextBox(title: 'Select Date',),
            CustomText(title: 'Destination'),
            Container(
              height: 130,
              width: 370,
              margin: EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Select Date',
                  border: InputBorder.none, // Removes the default border
                  contentPadding: EdgeInsets.all(16.0), // Optional: Add padding to the text field content
                ),
              ),
            ),
            CustomText(title: 'Beginning Mileage'),
            CustomTextBox(title: 'Select Date',),
            CustomText(title: 'Ending Mileage'),
            CustomTextBox(title: 'Select Date',),
            CustomText(title: 'Total Mileage'),
            CustomTextBox(title: 'Select Date',),
            CustomInfoContainer(),
            CustomText(title: 'Any Issues'),
            Container(
              height: 130,
              width: 370,
              margin: EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Select Date',
                  border: InputBorder.none, // Removes the default border
                  contentPadding: EdgeInsets.all(16.0), // Optional: Add padding to the text field content
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(primary: Color(0XFF1A9FB2)),
              child: Text('PRINT REPORT'),
            )
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16,bottom: 20,left: 20),
            child: Container(
              height: 40,
              width: 370,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1A9FB2),
                ),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}