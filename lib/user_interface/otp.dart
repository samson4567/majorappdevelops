import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:majorappdevelops/user_interface/groceries.dart';
import '';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33907C),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 175),
            child: const Center(
              child: const Text(
                "Phone Verifiation ",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Center(
              child: Text(
                " Enter your Otp code here",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          VerificationCode(
            textStyle: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Theme.of(context).primaryColor),
            keyboardType: TextInputType.number,
            underlineColor: Colors
                .amber, // If this is null it will use primaryColor: Colors.red from Theme
            length: 6,
            cursorColor:
                Colors.blue, // If this is null it will default to the ambient
            // clearAll is NOT required, you can delete it
            // takes any widget, so you can implement your design
            clearAll: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'clear all',
                style: TextStyle(
                    fontSize: 14.0,
                    decoration: TextDecoration.underline,
                    color: Colors.blue[700]),
              ),
            ),
            margin: const EdgeInsets.all(12),
            onCompleted: (String value) {
              setState(() {
                _code = value;
              });
            },
            onEditing: (bool value) {
              setState(() {
                _onEditing = value;
              });
              if (!_onEditing) FocusScope.of(context).unfocus();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 150,
            ),
            child: Center(
              child: Text(
                " Didnt you recieve any code? resent new code now ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Groceries())));
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.maxFinite,
                    height: 48,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(18.0))),
                    child: const Center(
                        child: Text(
                      'Verify',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
