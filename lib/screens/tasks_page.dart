import 'package:flutter/material.dart';

import '../components/constants.dart';

class TasksPage extends StatefulWidget {
  static String id = 'tasks_page';
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFede6d4),
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('Görevler ve Hikayeler'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Görevler'),
              Tab(text: 'Hikayeler'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                TaskNameContainer(text: 'Süreli Görevler'),
                Container(
                  height: 200,
                  color: Color(0xFFede6d4),
                  child: ListView(
                    children: [
                      TaskTile(
                        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
                        onPressed: () {},
                      ),
                      TaskTile(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. '),
                      TaskTile(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. '),
                    ],
                  ),
                ),
                TaskNameContainer(text: 'Haftalık Görevler'),
                Container(
                  height: 200,
                  color: Color(0xFFede6d4),
                  child: ListView(
                    children: [
                      TaskTile(
                        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. ',
                        onPressed: () {},
                      ),
                      TaskTile(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
                      TaskTile(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
                    ],
                  ),
                ),
                TaskNameContainer(text: 'Topluluk Görevleri'),
                Container(
                  height: 200,
                  color: Color(0xFFede6d4),
                  child: ListView(
                    children: [
                      TaskTile(
                        text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
                        onPressed: () {},
                      ),
                      TaskTile(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
                      TaskTile(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ParkStoryAvatar(
                      bgImage: AssetImage('images/yogurtcu.jpg'),
                      text: 'Yoğurtçu Parkı',
                    ),
                    ParkStoryAvatar(
                      text: 'Coming soon...',
                    ),
                    ParkStoryAvatar(
                      text: 'Coming soon...',
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                BilinmeyenParkRow(),
                SizedBox(height: 20.0),
                BilinmeyenParkRow(),
                SizedBox(height: 20.0),
                BilinmeyenParkRow(),
                SizedBox(height: 20.0),
                BilinmeyenParkRow(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TaskNameContainer extends StatelessWidget {
  TaskNameContainer({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TaskTextWidget(text: text),
      decoration: BoxDecoration(color: Colors.green.shade200, borderRadius: BorderRadius.all(Radius.circular(30))),
    );
  }
}

class BilinmeyenParkRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ParkStoryAvatar(
          text: 'Coming soon...',
        ),
        ParkStoryAvatar(
          text: 'Coming soon...',
        ),
        ParkStoryAvatar(
          text: 'Coming soon...',
        ),
      ],
    );
  }
}

class ParkStoryAvatar extends StatelessWidget {
  ParkStoryAvatar({this.bgImage, this.text});
  final ImageProvider bgImage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage: bgImage,
          radius: 50.0,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
        ),
      ],
    );
  }
}

class TaskTextWidget extends StatelessWidget {
  TaskTextWidget({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 40.0),
      textAlign: TextAlign.center,
    );
  }
}

class TaskTile extends StatelessWidget {
  TaskTile({this.text, this.onPressed});
  final Function onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: ListTile(
        title: Text(text),
        trailing: TaskCollectButton(
          text: 'Topla',
          onPressed: onPressed,
        ),
      ),
    );
  }
}

class TaskCollectButton extends StatelessWidget {
  TaskCollectButton({this.text, this.onPressed});
  final Function onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: kColorOyunIstMor,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
