import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/tasks_page.dart';
import 'constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kColorOyunIstKirmizi,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: FaIcon(FontAwesomeIcons.tasks, size: 35),
              onPressed: () {
                Navigator.pushNamed(context, TasksPage.id);
              }),
          IconButton(icon: FaIcon(FontAwesomeIcons.store, size: 35), onPressed: () {}),
          IconButton(icon: FaIcon(FontAwesomeIcons.userCircle, size: 35), onPressed: () {}),
          IconButton(icon: FaIcon(FontAwesomeIcons.userFriends, size: 35), onPressed: () {}),
          IconButton(icon: FaIcon(FontAwesomeIcons.trophy, size: 35), onPressed: () {}),
        ],
      ),
    );
  }
}
