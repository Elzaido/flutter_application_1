import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  // Here in the constructor of the class we initialize 3 parameters and make them as required so every time we call this widget we must give it the required paramerter values.
  const Last(
      {super.key,
      required this.image,
      required this.text,
      required this.title});

// first of all we must initlize the 3 'final' variables below the constructor.

  final String image;
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // rather than give the Text class a String value ... we give it the varible that we pass using our constructor.
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // rather than give the AssetImage class a String value ... we give it the varible that we pass using our constructor.
              Image(image: AssetImage(image)),
              Padding(
                padding: const EdgeInsets.all(15.0),
                // rather than give the Text class a String value ... we give it the varible that we pass using our constructor.
                child: Text(
                  text,
                  style: TextStyle(fontFamily: 'Cairo'),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ));
  }
}
