import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:majorappdevelops/user_interface/otp.dart';

class SendOtp extends StatefulWidget {
  const SendOtp({super.key});
  @override
  State<SendOtp> createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33907C),
      body: Form(
        child: ListView(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 130, bottom: 66),
                  child: Text(
                    "Verify your Phone Number",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 30, bottom: 40),
                  child: Text(
                    "we have sent you an sms to Verify a code to enter your number",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 32,
                    left: 32,
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '+91 54983059829',
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ))),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "or login with social network",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => const Otp())));
                  }),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 10, right: 30, left: 30, bottom: 30),
                    child: Container(
                      width: double.maxFinite,
                      height: 48,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(18.0))),
                      child: const Center(
                          child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
