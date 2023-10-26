

import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/custom_documentUpload.dart';

class VisitorScreen extends StatefulWidget {
  const VisitorScreen({super.key});

  @override
  State<VisitorScreen> createState() => _VisitorScreenState();
}

class _VisitorScreenState extends State<VisitorScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:70,bottom:20, left: 10),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back,size: 28, color: Color(0XFF1A9FB2)),
                    SizedBox(width: 10),
                    Text('VISITOR SIGN IN LOG', style: TextStyle(fontSize:18,color: Color(0XFF0C5C75)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Date',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 100,
                    width: 360,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: GoogleFonts.poppins(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        hintText: 'am to am',
                        fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                        hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
                        suffixIcon: Icon(Icons.calendar_month_outlined),
                        suffixIconColor: Color(0xFF1A9FB2),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Name',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 100,
                    width: 360,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: GoogleFonts.poppins(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        hintText: 'Select Day',
                        fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                        hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Time In',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 100,
                    width: 360,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: GoogleFonts.poppins(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        hintText: 'Select Date',
                        fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                        hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Reason For Visit',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 100,
                    width: 360,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: GoogleFonts.poppins(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        hintText: 'Select Date',
                        fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                        hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Time Out',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 100,
                    width: 360,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      style: GoogleFonts.poppins(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        hintText: 'Select Date',
                        fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                        hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black26, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 237.0),
                child: Container(
                  height: 50,
                  width: 108,
                  decoration: BoxDecoration(border: Border.all(width: 1,color: Color(0xFF1A9FB2)),borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Add',style: TextStyle(fontSize: 18,color: Color(0xFF1A9FB2)),),
                      SizedBox(width: 10,),
                      Icon(Icons.add_outlined,color: Color(0xFF1A9FB2),size: 20,)
                    ],
                  ),
                ),
              ),
              CustomInfoContainer(),
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color(0xFF1A9FB2)),
                child: Center(child: Text('PRINT REPORT',style: TextStyle(fontSize: 15,color: Colors.white),)),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Container(
            height: 43,
            width: 354,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF1A9FB2)),
            child: Center(child: Text('SUBMIT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF)),)),
          ),
        ),
      ),
    );
  }
}

class GoogleFonts {
  static poppins({required int fontSize, required FontWeight fontWeight, required Color color}) {}
}
