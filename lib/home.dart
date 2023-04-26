// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'lastpage.dart';
import 'shared/component.dart';
import 'model/texts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        title: Text(
          'Orange Company',
          style: TextStyle(
            fontFamily: 'Cairo',
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  'Hey Zaid ... Welcome Again',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black54,
                      fontFamily: 'Cairo'),
                ),
              ),
            ),
            defualtCard(
                context: context,
                whereTo: Last(
                  image: 'assets/image1.png',
                  text: text1,
                  title: 'Data Analist Team',
                ),
                image: 'assets/image1.png',
                text: 'Data Analist Team'),
            defualtCard(
                context: context,
                whereTo: Last(
                  image: 'assets/image2.png',
                  text: text2,
                  title: 'Front End Team',
                ),
                image: 'assets/image2.png',
                text: 'Front End Team'),
            defualtCard(
                context: context,
                whereTo: Last(
                  image: 'assets/image3.png',
                  text: text3,
                  title: 'Back End Team',
                ),
                image: 'assets/image3.png',
                text: 'Back End Team'),
            defualtCard(
                context: context,
                whereTo: Last(
                  image: 'assets/image4.png',
                  text: text4,
                  title: 'Team Leaders',
                ),
                image: 'assets/image4.png',
                text: 'Team Leaders'),
          ],
        ),
      ),
    );
  }
}
