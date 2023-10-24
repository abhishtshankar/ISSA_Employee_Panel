import 'package:flutter/material.dart';
import 'package:issa_employee_panel/src/common/widget/app_widgets.dart';

class VisitorLog extends StatefulWidget {
  const VisitorLog({super.key});

  @override
  State<VisitorLog> createState() => _VisitorLogState();
}

class _VisitorLogState extends State<VisitorLog> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('VISITOR SIGN IN LOG'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildCustomTextField1(
              hMargin: 18,
              header: 'Date',
              hintText: 'Select Date',
              suffixIcon: Image.asset(
                'assets/icons/cal.png',
              ),
            ),
            buildCustomTextField1(
              hMargin: 18,
              header: 'Name',
            ),
            buildCustomTextField1(
              hMargin: 18,
              header: 'Time In',
            ),
            buildCustomTextField1(
              hMargin: 18,
              header: 'Reason For Visit',
            ),
            buildCustomTextField1(
              hMargin: 18,
              header: 'Time Out',
            ),
            buildVSpacer(20),
            buildAddButton(),
            buildVSpacer(30),
            buildUploader(size: size), 
            buildVSpacer(30),
            buildPrintButton(),
            buildVSpacer(100),
          ],
        ),
      ),
      buildSubmitButton(size: size),
        ],
      ),
    );
  }
}
