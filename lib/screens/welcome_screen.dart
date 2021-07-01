import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/rounded_button.dart';
import 'story_page.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Parkın Korucuları',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          RoundedButton(
            text: 'Maceraya başla!',
            color: kColorOyunIstYesil,
            textColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, StoryPage.id);
            },
          ),
        ],
      ),
    );
  }
}
