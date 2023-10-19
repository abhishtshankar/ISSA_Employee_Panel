import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_buttons.dart';
import 'package:issa_employee_panel/src/common/widget/app_colors.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';
import 'package:issa_employee_panel/src/views/bottom_navigations/bottom_nav_bar.dart';
import 'package:issa_employee_panel/src/views/notes_library.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final List<String> _textInputFieldHeaders = [
    'First Name',
    'Last Name',
    'Email ID',
    'Phone Number',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 0, 0.0, 0.0),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.kButtonBackground1,
            child: BackButton(
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
        title: const Text('REGISTRATION'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildVSpacer(20),
              const Text(
                'Please fill the Details to continue your Registration Process',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              for(var i in _textInputFieldHeaders)
              buildCustomTextField1(
                header: i,
              ),
              buildVSpacer(30),
              AppButtons.primaryButton(text: 'CONTINUE', onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AppBottomNavBar(),),);
              },),
            ],
          ),
        ),
      ),
    );
  }
}

Container buildCustomTextField1({String? header, String? hintText, double? hMargin, double? vMargin,}){
  return Container(
              margin: EdgeInsets.symmetric(horizontal: hMargin??0, vertical: vMargin??20),
              width: double.maxFinite,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    header??'Lorem Ipsum',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  buildVSpacer(20),
                  SizedBox(
                    height: 50,
                    width: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          hintText: hintText??'Enter your Lorem Ipsum',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                           color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
}