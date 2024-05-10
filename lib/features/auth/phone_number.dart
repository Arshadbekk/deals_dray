import 'package:deals_dray/features/auth/email_page.dart';
import 'package:deals_dray/features/auth/otp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';

import '../../main.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },

          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                  height: w * 0.7,
                  width: w * 0.6,
                  child: Image.asset("assets/deals_logo.png")),
            ),
            SlidingSwitch(
              value: false,
              onChanged: (value) {},
              onTap: () {},
              onDoubleTap: () {},
              onSwipe: () {},
              background: Colors.grey,
              width: w * 0.5,
              height: w * 0.15,
              contentSize: w * 0.03,
              textOn: "Email",
              textOff: "Phone",
              buttonColor: Colors.red,
              colorOn: Colors.white,
              colorOff: Colors.white,
            ),
            SizedBox(
              height: w * 0.05,
            ),
            Text(
              "Glad to see you!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.06),
            ),
            SizedBox(
              height: w * 0.03,
            ),
            Text(
              "Please provide your phone number",
              style: TextStyle(fontSize: w * 0.03),
            ),
            SizedBox(
              height: w * 0.03,
            ),
            SizedBox(
              width: w * 0.6,
              child: TextFormField(
                decoration: InputDecoration(hintText: "Phone"),
              ),
            ),
            SizedBox(
              height: w * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OtpPage(),));
              },
              child: Container(
                width: w * 0.6,
                height: w * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * 0.03),
                    color: Colors.red),
                child: Center(
                  child: Text(
                    "Send Code",
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
