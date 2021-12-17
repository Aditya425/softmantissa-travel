import 'package:flutter/material.dart';
import 'package:travel/screens/submit_otp.dart';

class GetOtp extends StatelessWidget {
  static String id = "GetOtp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 300,
            ),
            Image.asset("images/logo.jpeg",
            height: 100,
            width: 100,
            fit: BoxFit.fitHeight,),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Phone number",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent
                  )
                )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, SubmitOTP.id, (Route<dynamic> r) => false);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  "Get OTP",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 100
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
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.green
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}