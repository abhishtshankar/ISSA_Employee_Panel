import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/custom_documentUpload.dart';
import 'package:issa_employee_panel/src/common/widget/custom_text.dart';

class StaffSchedule extends StatefulWidget {
  const StaffSchedule({Key? key}) : super(key: key);

  @override
  _WidgetScreenState createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<StaffSchedule> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Container(
            height: 43,
            width: 354,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF1A9FB2)),
            child: Center(child: Text('SUBMIT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF)),)),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.teal, // Set the color of the Icon here
                    ),
                    SizedBox(width: 30),
                    Text(
                      'STAFF SCHEDULE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: CustomText(title: 'SHIFT',),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "am to am",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                    ),
                    onChanged: (comment) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "am to am",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                    ),
                    onChanged: (comment) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "am to am",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                    ),
                    onChanged: (comment) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: CustomText(title: 'Day',),
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Select Day",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                    ),
                    onChanged: (comment) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: CustomText(title: 'Date',),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Select Day",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                    ),
                    onChanged: (comment) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Administrator  , House manager ,BHP  and \nRegistered  Nurse are on-Call 24/7',
                  style: TextStyle(
                    fontSize: 19,fontWeight: FontWeight.w400,color:Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 135),
                  child: Text(
                    'Administrator  and Number',
                    style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.w500,color:Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Select Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                    ),
                    onChanged: (comment) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 110),
                  child: Text(
                    'Registered Nurse and Number',
                    style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.w500,color:Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Select Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                    ),
                    onChanged: (comment) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 160),
                  child: Text(
                    'BHT Name and Number',
                    style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.w500,color:Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Select Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                    ),
                    onChanged: (comment) {
                      setState(() {});
                    },
                  ),
                ),
                CustomInfoContainer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}