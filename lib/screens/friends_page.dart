import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  static String id = 'friends_page';
  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Arkadaşlarım'),
      ),
      body: ListView(
        children: [
          FriendsItemRow(
            rank: '1.',
            userName: 'altug_ylmz',
            image: AssetImage('images/userImages/user.png'),
          ),
          FriendsItemRow(
            rank: '2.',
            userName: 'alen_tascioglu',
            image: AssetImage('images/userImages/user.png'),
          ),
          FriendsItemRow(
            rank: '3.',
            userName: 'hugooo_abi',
            image: AssetImage('images/userImages/user.png'),
          ),
          FriendsItemRow(
            rank: '4.',
            userName: 'elif_sedaa12',
            image: AssetImage('images/userImages/user.png'),
          ),
          FriendsItemRow(
            rank: '5.',
            userName: 'merve221_yildiz',
            image: AssetImage('images/userImages/user.png'),
          ),
          FriendsItemRow(
            rank: '6.',
            userName: 'excalibur_144',
            image: AssetImage('images/userImages/user.png'),
          ),
          FriendsItemRow(
            rank: '7.',
            userName: 'ekrem_imamoglu34',
            image: AssetImage('images/userImages/user.png'),
          ),
          FriendsItemRow(
            rank: '8.',
            userName: 'doa_trn41',
            image: AssetImage('images/userImages/user.png'),
          ),
        ],
      ),
    );
  }
}

class FriendsItemRow extends StatelessWidget {
  FriendsItemRow({this.rank, this.userName, this.image});
  final String rank, userName;
  final ImageProvider image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade200,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            Text(
              rank,
              style: TextStyle(color: Colors.brown.shade900, fontWeight: FontWeight.w600, fontSize: 15),
            ),
            SizedBox(width: 20),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              backgroundImage: image,
            ),
            SizedBox(width: 20),
            Text(
              userName,
              style: TextStyle(color: Colors.brown.shade900, fontWeight: FontWeight.w600, fontSize: 19),
            ),
            /*
            TextButton(
              style: ButtonStyle(alignment: Alignment.centerRight),
              onPressed: () {},
              child: Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Rekabet başlat!'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  color: kColorOyunIstMor,
                ),
              ),
            )
            */
          ],
        ),
      ),
    );
  }
}
