import 'package:flutter/material.dart';
import 'package:majorappdevelops/user_interface/SignUp.dart';
import 'package:majorappdevelops/user_interface/groceries.dart';

class Home_screen2 extends StatelessWidget {
  const Home_screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33907C),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 120, bottom: 66),
            child: Center(
                child: Text(
              "Welcome to tradly",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )),
          ),
          const Center(
              child: Text(
            "login to your account",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white),
          )),
          const Padding(
            padding: EdgeInsets.only(top: 45, left: 32, right: 32),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Email/ mobile Number',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 45, left: 32, right: 32),
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, right: 32, bottom: 33),
            child: InkWell(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Groceries())));
              }),
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.maxFinite,
                      height: 48,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(18.0))),
                      child: const Center(
                          child: Text(
                        'login',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'forgot your password',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account ?',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SignUp())));
                },
                child: const Text(
                  "sign up",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
