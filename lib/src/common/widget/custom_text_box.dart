import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextBox extends StatelessWidget {
  final String title;

  CustomTextBox({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 100,
              width: 360,
              child: TextFormField(
                keyboardType: TextInputType.name,
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                  hintText: title,
                  fillColor: Colors.blueGrey.shade200.withOpacity(0.2),
                  hintStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
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
      ],
    );
  }
}