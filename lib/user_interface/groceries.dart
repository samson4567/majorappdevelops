import 'package:flutter/material.dart';

class Groceries extends StatefulWidget {
  const Groceries({super.key});

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 150,
          width: 400,
          color: Color(0xff33907C),
          child:  Padding( 
            padding: const EdgeInsets.only(top: 40, right: 20, left:20), 
            child:  
            TextField(
                decoration: InputDecoration(
                    hintText: 'Search', 
                    prefixIcon: Icon(Icons.location_searching_outlined),
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ))),
              ),
          ), 
        )
      ]),
    );
  }
}
