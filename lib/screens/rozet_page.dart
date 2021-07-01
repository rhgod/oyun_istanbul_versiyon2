import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'profile_page.dart';

class RozetPage extends StatefulWidget {
  static String id = 'rozet_page';
  @override
  _RozetPageState createState() => _RozetPageState();
}

class _RozetPageState extends State<RozetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Rozetler'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AvatarIconAndBottomText(
                color: Colors.green.shade700,
                icon: FaIcon(FontAwesomeIcons.walking, size: 45, color: Colors.white),
                radius: 45,
                bottomText: 'Acemi Korucu',
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Acemi Korucu'),
                    content: const Text('5. Seviyeye ulaştın.'),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context, 'OK'), child: const Text('OK')),
                    ],
                  ),
                ),
              ),
              AvatarIconAndBottomText(
                color: Colors.blue.shade400,
                icon: FaIcon(FontAwesomeIcons.userFriends, size: 45, color: Colors.white),
                radius: 45,
                bottomText: 'Arkadaş Canlısı',
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Arkadaş Canlısı'),
                    content: const Text('İlk arkadaşını edindin.'),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context, 'OK'), child: const Text('OK')),
                    ],
                  ),
                ),
              ),
              AvatarIconAndBottomText(
                color: Colors.blue.shade900,
                icon: FaIcon(FontAwesomeIcons.mapSigns, size: 45, color: Colors.white),
                radius: 45,
                bottomText: 'Kıtalar Arası',
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Kıtalar Arası'),
                    content: const Text('Asya ve Avrupa kıtalarında en az birer park ziyaret ettin.'),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context, 'Tamam'), child: const Text('Tamam')),
                    ],
                  ),
                ),
              ),
            ],
          ),
          BilinmeyenRozetRow(),
          BilinmeyenRozetRow(),
          BilinmeyenRozetRow(),
          BilinmeyenRozetRow(),
          BilinmeyenRozetRow(),
        ],
      ),
    );
  }
}

class BilinmeyenRozetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AvatarIconAndBottomText(
          color: Colors.grey,
          icon: FaIcon(FontAwesomeIcons.question, size: 45, color: Colors.white),
          radius: 45,
          bottomText: '???',
          onPressed: () {},
        ),
        AvatarIconAndBottomText(
          color: Colors.grey,
          icon: FaIcon(FontAwesomeIcons.question, size: 45, color: Colors.white),
          radius: 45,
          bottomText: '???',
          onPressed: () {},
        ),
        AvatarIconAndBottomText(
          color: Colors.grey,
          icon: FaIcon(FontAwesomeIcons.question, size: 45, color: Colors.white),
          radius: 45,
          bottomText: '???',
          onPressed: () {},
        ),
      ],
    );
  }
}
