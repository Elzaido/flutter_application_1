import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  const Last(
      {super.key,
      required this.image,
      required this.text,
      required this.title});

  final String image;
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage(image)),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
