import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/custom_documentUpload.dart';
import 'package:issa_employee_panel/src/common/widget/custom_text.dart';
import 'package:issa_employee_panel/src/common/widget/custom_textform_field.dart';

class TimeSheet extends StatefulWidget {
  const TimeSheet({super.key});

  @override
  State<TimeSheet> createState() => _TimeSheetState();
}

class _TimeSheetState extends State<TimeSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {},
        ),
        title: Text('TIMESHEET',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,color:Colors.teal,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomText(title: 'Day and Date',),
            SizedBox(
              height:5,),
            CustomTextform(title:'Enter Your Loreum Ipsum'),
            SizedBox(
              height:5),
            CustomText(title: 'Shift Time',),
            SizedBox(
              height:5,),
            CustomTextform(title:'Enter Your Loreum Ipsum'),
            SizedBox(
                height:5),
            CustomText(title: 'Administrator and Number',),
            SizedBox(
              height:5,),
            CustomTextform(title:'Enter Your Loreum Ipsum'),
            SizedBox(
                height:5),
            CustomText(title: 'Registered Nurse and Number',),
            SizedBox(
              height:5,),
            CustomTextform(title:'Enter Your Loreum Ipsum'),
            SizedBox(
                height:5),
            CustomText(title: 'BHT Name and Number',),
            SizedBox(
              height:5,),
            CustomTextform(title:'Enter Your Loreum Ipsum'),
 SizedBox(
   height:10,
 ),
            CustomInfoContainer()
          ],
        ),
      ),
    );
  }
}
