import 'package:flutter/material.dart';
import 'package:travel/screens/get_otp.dart';
import 'package:travel/screens/home_page.dart';
import 'package:travel/screens/submit_otp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        GetOtp.id : (context) => GetOtp(),
        SubmitOTP.id : (context) => SubmitOTP(),
        HomePage.id : (context) => HomePage()
      },
      initialRoute: GetOtp.id,
    );
  }

}