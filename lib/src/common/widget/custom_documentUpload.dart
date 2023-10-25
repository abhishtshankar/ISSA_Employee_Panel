import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 380,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.cyan.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              print("Image clicked");
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 50),
              child: Image.asset(
                'assets/images/image 99.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    print("SAVED AS DRAFT clicked");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan.shade900, width: 1),
                    ),
                    child: Text(
                      'SAVED AS DRAFT',
                      style: GoogleFonts.poppins(fontSize: 10, color: Colors.cyan.shade900),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                GestureDetector(
                  onTap: () {
                    print("SAVED AND SIGNED clicked");
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Color(0xFF0C5C75),
                    child: Text(
                      'SAVED AND SIGNED',
                      style: GoogleFonts.poppins(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
