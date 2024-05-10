import 'package:flutter/material.dart';

import '../../main.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  bool pass=false;
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
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        onPressed: () {

      },label: Icon(Icons.arrow_forward_outlined),
        backgroundColor: Colors.red,

      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                  height: w * 0.5,
                  width: w * 0.6,
                  child: Image.asset("assets/deals_logo.png"),),
            ),
        
            Text("Let's Begin!",
              textAlign: TextAlign.start,
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: w*0.07
            ),),
            SizedBox(
              height: w*0.03,
            ),
            Text("Please Enter your credential to proceed",style: TextStyle(
              color: Colors.grey
            ),),
            SizedBox(
              width: w * 0.6,
              child: TextFormField(
                decoration: InputDecoration(hintText: "Your Email"),
              ),
            ),
            SizedBox(
              height: w*0.03,
            ),
            SizedBox(
              width: w * 0.6,
              child: TextFormField(
                obscureText: pass,
                decoration: InputDecoration(
                    hintText: "Create Password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      pass=!pass;
                      setState(() {
                        
                      });
                    },
                      child: pass==true?Icon(Icons.remove_red_eye):Icon(Icons.visibility_off))
                ),
              ),
            ),
            SizedBox(
              height: w*0.03,
            ),
            SizedBox(
              width: w * 0.6,
              child: TextFormField(
                decoration: InputDecoration(hintText: "Referral Code (Optional)"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
