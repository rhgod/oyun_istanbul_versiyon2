import 'package:flutter/material.dart';

import 'profile_page.dart';

class LeaderboardPage extends StatefulWidget {
  static String id = 'leaderboard_page';
  @override
  _LeaderboardPageState createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('Liderlik Tablosu'),
          bottom: TabBar(
            tabs: [
              Text(
                'Park',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'İlçe',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'İstanbul',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                  color: Colors.blue.shade400,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: AvatarImageAndBottomText(
                        radius: 35,
                        image: NetworkImage('https://observer.com/wp-content/uploads/sites/2/2020/08/GettyImages-1192169655.jpg?quality=80&w=635'),
                        bottomText: Text(
                          'user_name12',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),
                        ),
                        point: '3080p',
                        topText: '2.',
                        title: 'Acemi Korucu',
                      ),
                    ),
                    Expanded(
                      child: AvatarImageAndBottomText(
                        radius: 75,
                        image: AssetImage('images/cuno.png'),
                        bottomText: Text(
                          'cuno_blci08',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20),
                        ),
                        point: '3080p',
                        topText: '1.',
                        title: 'Acemi Korucu',
                      ),
                    ),
                    Expanded(
                      child: AvatarImageAndBottomText(
                        radius: 35,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiAycfg2D9GptsO9JmtCb7FEyeDauniavERDLQyeFsT7z-12iHbxaSLpmSwPn-oiIekoU&usqp=CAU'),
                        bottomText: Text(
                          'user_name12',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),
                        ),
                        point: '3080p',
                        topText: '3.',
                        title: 'Acemi Korucu',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: ListView(
                  children: [
                    LeaderboardItemRow(
                      rank: '4.',
                      image:
                          NetworkImage('https://www.wonderwall.com/wp-content/uploads/sites/2/2021/02/shutterstock_editorial_10494285ds.jpg?h=800'),
                      userName: 'User_name1223',
                      puan: '1090p',
                    ),
                    LeaderboardItemRow(
                      rank: '5.',
                      image: NetworkImage('https://storage.googleapis.com/afs-prod/media/e09ce961b14741199f8e6c6bc21dbb26/800.jpeg'),
                      userName: 'User_name1223',
                      puan: '1090p',
                    ),
                    LeaderboardItemRow(
                      rank: '6.',
                      image: NetworkImage(
                          'https://media.vanityfair.com/photos/5f931fbbd070eec8d50f0ebb/master/pass/jennifer-lawrence-little-republican.jpg'),
                      userName: 'User_name1223',
                      puan: '1090p',
                    ),
                    LeaderboardItemRow(
                      rank: '7.',
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ-PFJ5yR_MVcTvwn9M5dxnW2Qu7RS89vyqw&usqp=CAU'),
                      userName: 'User_name1223',
                      puan: '1090p',
                    ),
                    LeaderboardItemRow(
                      rank: '8.',
                      image: NetworkImage(
                          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mh-sober-celebs-1557254713.jpg?crop=0.258xw:0.516xh;0.373xw,0.0545xh&resize=640:*'),
                      userName: 'User_name1223',
                      puan: '1090p',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LeaderboardItemRow extends StatelessWidget {
  LeaderboardItemRow({this.rank, this.userName, this.puan, this.image});
  final String rank, userName, puan;
  final ImageProvider image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            rank,
            style: TextStyle(color: Colors.brown.shade900, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: image,
          ),
          Text(
            userName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          Text(
            puan,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
