import 'package:deals_dray/features/auth/email_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';

import '../../main.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  void initState() {
    Future.delayed(Duration(
      seconds: 5
    )).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context) => EmailPage(),)));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: w*0.6,
                width: w*0.6,
                  child: Lottie.asset("assets/otpScreen.json"),),
            ),
            Text("OTP Verification",
              textAlign: TextAlign.start,
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: w*0.07
            ),
        
            ),
            SizedBox(
              height: w*0.03,
            ),
            Text("We have sent a unique OTP Number \n to your Mobile ",textAlign: TextAlign.start,style: TextStyle(
              color: Colors.grey
            ),),
            SizedBox(
              height: h*0.05,
            ),
            Pinput(
              separatorBuilder: (index) => SizedBox(
                width: w*0.1,
              ),
              length: 4,
              androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
              defaultPinTheme: PinTheme(
                height: w*0.1,
                width: w*0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w*0.02),
                  border: Border.all(color: Colors.black),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  TimerCountdown(
                    enableDescriptions: false,
                      format: CountDownTimerFormat.minutesSeconds,
                      endTime: DateTime.now().add(Duration(
                    seconds: 120
                  ))),
                  SizedBox(
                  ),
                  Text("Send Again".toUpperCase(),
                    style: TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
