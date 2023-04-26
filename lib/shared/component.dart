// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget myFormField({
  required TextEditingController controller,
  required bool isPass,
  required Text label,
}) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPass,
        decoration: InputDecoration(label: label, border: OutlineInputBorder()),
      ),
    );

Widget defualtCard({
  required BuildContext context,
  required Widget whereTo,
  required String image,
  required String text,
}) =>
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
