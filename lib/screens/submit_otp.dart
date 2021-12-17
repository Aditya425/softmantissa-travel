import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:travel/screens/home_page.dart';

class SubmitOTP extends StatelessWidget {
  static String id = "SubmitOTP";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Image.asset("images/logo.jpeg",
            height: 50,
            width: 50,),
            SizedBox(
              height: 20,
            ),
            OtpTextField(
              keyboardType: TextInputType.number,
              showFieldAsBox: true,
              numberOfFields: 6,
              borderColor: Colors.blueAccent,
              enabledBorderColor: Colors.blueAccent,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, HomePage.id, (Route<dynamic> r) => false);
                },
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Forgot password"
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.green
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}