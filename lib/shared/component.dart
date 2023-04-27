// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// this file contain 2 shared widgets and we can call them anywhere in our app.

Widget myFormField({
  // the 3 parameters below will make our widget dynamin so whenever we call this widget .. we must give it a new values.
  required TextEditingController controller,
  required bool isPass,
  required Text label,
}) =>
// The idea of making a shared component means that rather than write this code below 2 times or more in a row ... we write it 1 time then call it whenever we need it.

    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPass,
        decoration: InputDecoration(label: label, border: OutlineInputBorder()),
      ),
    );

Widget defualtCard({
  // the 4 parameters below will make our widget dynamin so whenever we call this widget .. we must give it a new values.
  required BuildContext context,
  required Widget whereTo,
  required String image,
  required String text,
}) =>
// The idea of making a shared component means that rather than write this code below 5 times in a row ... we write it 1 time then call it 5 times.
    InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => whereTo));
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(alignment: Alignment.center, children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  opacity: 0.5,
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(2, 4), // changes position of shadow
                ),
              ],
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
