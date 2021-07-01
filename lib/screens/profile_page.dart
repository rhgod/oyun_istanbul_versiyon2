import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/constants.dart';
import 'rozet_page.dart';

class ProfilePage extends StatefulWidget {
  static String id = 'profile_page';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profilim'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AvatarIconAndBottomText(
                    color: Colors.lightGreen.shade900,
                    icon: FaIcon(FontAwesomeIcons.cogs, size: 30, color: Colors.white),
                    radius: 35,
                    bottomText: 'Profili Düzenle',
                    onPressed: () {},
                  ),
                  AvatarImageAndBottomText(
                    topText: '5. Seviye',
                    image: AssetImage('images/cuno.png'),
                    radius: 75,
                    bottomText: Text(
                      'cuno_balci',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
                    ),
                    point: '3080p',
                    title: 'Acemi Korucu',
                  ),
                  AvatarIconAndBottomText(
                    color: Colors.lightGreen.shade900,
                    icon: FaIcon(FontAwesomeIcons.shieldAlt, size: 30, color: Colors.white),
                    radius: 35,
                    bottomText: 'Rozetler',
                    onPressed: () {
                      Navigator.pushNamed(context, RozetPage.id);
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(20)), color: Colors.green.shade600),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileInfoRow(
                    text: 'Cüneyt Balcı',
                    icon: FaIcon(FontAwesomeIcons.solidIdCard),
                  ),
                  ProfileInfoRow(
                    text: '21 Yaşındayım',
                    icon: FaIcon(FontAwesomeIcons.smile),
                  ),
                  ProfileInfoRow(
                    text: 'Favori Anıt Ağacım Macar Meşesi',
                    icon: FaIcon(FontAwesomeIcons.tree),
                  ),
                  ProfileInfoRow(
                    text: 'Favori Parkım Yoğurtçu Parkı',
                    icon: FaIcon(FontAwesomeIcons.mapMarkedAlt),
                  ),
                  ProfileInfoRow(
                    text: 'Cüneyt Balcı',
                    icon: FaIcon(FontAwesomeIcons.solidIdCard),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInfoRow extends StatelessWidget {
  ProfileInfoRow({this.text, this.icon});
  final FaIcon icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(width: 10.0),
        Container(
          width: 200,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        SizedBox(width: 10.0),
        icon,
      ],
    );
  }
}

class AvatarIconAndBottomText extends StatelessWidget {
  AvatarIconAndBottomText({this.radius, this.icon, this.bottomText, this.onPressed, this.color});
  final double radius;
  final FaIcon icon;
  final String bottomText;
  final Function onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onPressed,
          child: CircleAvatar(backgroundColor: color, radius: radius, child: icon),
        ),
        SizedBox(height: 5),
        Text(bottomText),
      ],
    );
  }
}

class AvatarImageAndBottomText extends StatelessWidget {
  AvatarImageAndBottomText({this.radius, this.image, this.bottomText, this.point, this.title, this.topText});
  final double radius;
  final String topText;
  final ImageProvider image;
  final String point, title;
  final Text bottomText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          topText,
          style: TextStyle(color: Colors.brown.shade900, fontSize: 20.0),
        ),
        CircleAvatar(
          radius: radius,
          backgroundImage: image,
          backgroundColor: kColorOyunIstMor,
        ),
        Text(
          '< $title >',
          style: TextStyle(color: Colors.brown.shade900, fontWeight: FontWeight.w500, fontSize: 12),
        ),
        bottomText,
        Text(
          point,
          style: TextStyle(color: Colors.lightBlue.shade100, fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ],
    );
  }
}
