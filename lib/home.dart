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
        // Try always to use the same font for all of the texts in your app ... this will give it a uniform character.
        title: Text(
          'Orange Company',
          style: TextStyle(
            fontFamily: 'Cairo',
          ),
        ),
      ),
      // SingleChildScrollView Class give your screen the ability to be scrolling.
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
            // this widget below is a shared component ... to see how did we make it ... press (ctrl + left click).
            // shared component have lot of advantages like improve the performnace, make the maintanance easier cuz we edit the component one time only, achaive the 'clean code' princple.
            defualtCard(
                context: context,
                // We use the same page as a navigation ... but the content of it is dynamic ... so we pass the content when we call this widget ... press (ctrl + left click) on 'Last' to know more ...
                whereTo: Last(
                  image: 'assets/image1.png',
                  // to avoid collision and make our code more clean we intialize the text1,2,3,4 variables in another file called texts.dart in the model folder.
                  text: text1,
                  title: 'AR/VR Team',
                ),
                image: 'assets/image1.png',
                text: 'AR/VR Team'),
            defualtCard(
                context: context,
                whereTo: Last(
                  image: 'assets/image2.png',
                  // to avoid collision and make our code more clean we intialize the text1,2,3,4 variables in another file called texts.dart in the model folder.
                  text: text2,
                  title: 'Front End Team',
                ),
                image: 'assets/image2.png',
                text: 'Front End Team'),
            defualtCard(
                context: context,
                whereTo: Last(
                  image: 'assets/image3.png',
                  // to avoid collision and make our code more clean we intialize the text1,2,3,4 variables in another file called texts.dart in the model folder.
                  text: text3,
                  title: 'Data Analist Team',
                ),
                image: 'assets/image3.png',
                text: 'Data Analist Team'),
            defualtCard(
                context: context,
                whereTo: Last(
                  image: 'assets/image4.png',
                  // to avoid collision and make our code more clean we intialize the text1,2,3,4 variables in another file called texts.dart in the model folder.
                  text: text4,
                  title: 'Back End Team',
                ),
                image: 'assets/image4.png',
                text: 'Back End Team'),
          ],
        ),
      ),
    );
  }
}
