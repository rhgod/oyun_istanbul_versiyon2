import 'package:flutter/material.dart';

import 'screens/dukkan_page.dart';
import 'screens/friends_page.dart';
import 'screens/leaderboard_page.dart';
import 'screens/main_page.dart';
import 'screens/profile_page.dart';
import 'screens/qr_page.dart';
import 'screens/rozet_page.dart';
import 'screens/story_page.dart';
import 'screens/tasks_page.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: Color(0xFFede6d4)),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        StoryPage.id: (context) => StoryPage(),
        MainPage.id: (context) => MainPage(),
        TasksPage.id: (context) => TasksPage(),
        DukkanPage.id: (context) => DukkanPage(),
        ProfilePage.id: (context) => ProfilePage(),
        RozetPage.id: (context) => RozetPage(),
        LeaderboardPage.id: (context) => LeaderboardPage(),
        FriendsPage.id: (context) => FriendsPage(),
        QRPage.id: (context) => QRPage(),
      },
    );
  }
}
