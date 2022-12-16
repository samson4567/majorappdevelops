import 'package:flutter/material.dart';
import 'package:majorappdevelops/user_interface/groceries.dart';
import 'package:majorappdevelops/user_interface/sendotp.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33907C),
      body: ListView(children: [
        const Padding(
          padding: EdgeInsets.only(top: 100, bottom: 66),
          child: Center(
              child: Text(
            "Welcome to tradly",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
          )),
        ),
        const Center(
            child: Text(
          "sign up to your account",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        )),
        const Padding(
          padding: EdgeInsets.only(
            top: 45,
            right: 32,
            left: 32,
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'First Name',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ))),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 32,
            left: 32,
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Last Name',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ))),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 30,
            left: 30,
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Email ID/ Mobile Number',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ))),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 30,
            left: 30,
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ))),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, right: 30, left: 30, bottom: 30),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Re-enter Password',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ))),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 30, left: 30, bottom: 30),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const SendOtp())));
            },
            child: Container(
              width: double.maxFinite,
              height: 48,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(18.0))),
              child: const Center(
                  child: Text(
                'Create',
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Have an account?',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const SendOtp())));
              },
              child:const Text(
                "sign in",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
