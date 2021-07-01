import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/main_page_button.dart';
import 'dukkan_page.dart';
import 'friends_page.dart';
import 'profile_page.dart';
import 'qr_page.dart';
import 'tasks_page.dart';

import 'leaderboard_page.dart';

class MainPage extends StatefulWidget {
  static String id = 'main_page';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainPageButton(
                  child: FaIcon(FontAwesomeIcons.tasks, size: 90),
                  text: 'Görevler',
                  onPressed: () {
                    Navigator.pushNamed(context, TasksPage.id);
                  },
                ),
                MainPageButton(
                  child: FaIcon(FontAwesomeIcons.store, size: 90),
                  text: 'Dükkan',
                  onPressed: () {
                    Navigator.pushNamed(context, DukkanPage.id);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainPageButton(
                  child: FaIcon(FontAwesomeIcons.userCircle, size: 90),
                  text: 'Profil',
                  onPressed: () {
                    Navigator.pushNamed(context, ProfilePage.id);
                  },
                ),
                MainPageButton(
                  child: FaIcon(FontAwesomeIcons.userFriends, size: 90),
                  text: 'Arkadaşlarım',
                  onPressed: () {
                    Navigator.pushNamed(context, FriendsPage.id);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MainPageButton(
                  child: FaIcon(FontAwesomeIcons.trophy, size: 90),
                  text: 'Liderlik Tablosu',
                  onPressed: () {
                    Navigator.pushNamed(context, LeaderboardPage.id);
                  },
                ),
                MainPageButton(
                  child: FaIcon(FontAwesomeIcons.qrcode, size: 90),
                  text: 'QR Kod Okut',
                  onPressed: () {
                    Navigator.pushNamed(context, QRPage.id);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarAndTextRow extends StatelessWidget {
  AvatarAndTextRow({this.image, this.text, this.minitext});
  final String text, minitext;
  final ImageProvider image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 50.0,
          backgroundImage: image,
          backgroundColor: Colors.grey,
        ),
        SizedBox(width: 15.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text, textAlign: TextAlign.start, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
              Text(minitext, textAlign: TextAlign.left)
            ],
          ),
        )
      ],
    );
  }
}
