import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/rounded_button.dart';
import 'main_page.dart';

class StoryPage extends StatefulWidget {
  static String id = 'story_page';
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final List<String> storyList = [
    'Her şey yıllar önce başladı. İç içe yaşadığımız doğayı unutup, hızlı yaşamaya, hızlı kentleşmeye başladığımız zamanlar...',
    'İlk çiçek unutulduğunda, kimse farkına bile varmadı. Sonra ağaçlar, kuşlar ve diğer hayvanlar unutuldu. Yaşam unutuldu.',
    'Şimdi onlar parklarda, bahçelerde üzgün bir şekilde bizi, seni bekliyor.',
    'Şimdi güzel İstanbulun kaderi Parkın Korucularının elinde. Çicekleri, ağaçları ve canlıları kurtarmak senin görevin. Tek yapman gereken onları hatırlamak.',
  ];

  int storyCounter = 0;
  String buttonText = 'İlerle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                storyList[storyCounter],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            RoundedButton(
              color: kColorOyunIstYesil,
              text: 'İleri',
              onPressed: () {
                setState(() {
                  if (storyCounter != 3) {
                    storyCounter++;
                    if (storyCounter == 3) {
                      buttonText = 'Maceraya başla!';
                    }
                  } else {
                    //Ana ekrana git
                    Navigator.pushNamed(context, MainPage.id);
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
