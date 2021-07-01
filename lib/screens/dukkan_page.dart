import 'package:flutter/material.dart';

import 'main_page.dart';
import 'tasks_page.dart';

class DukkanPage extends StatefulWidget {
  static String id = 'dukkan_page';
  @override
  _DukkanPageState createState() => _DukkanPageState();
}

class _DukkanPageState extends State<DukkanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Puan Dükkanı'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: DukkanItemWidget(
              image: AssetImage('images/fidan.jpg'),
              itemName: 'Fidan',
              itemInfo: 'Tema vakfına puanlarınla fidan bağışlayabilirisin (Geleceğin öncüsü rozeti verir).',
              point: '10000p',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: DukkanItemWidget(
              image: AssetImage('images/kahve.jpg'),
              itemName: 'Kahve',
              itemInfo: 'İstanbul belediyesinin sosyal tesisinden bir adet kahve alabilirsin.',
              point: '5000p',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: DukkanItemWidget(
              image: AssetImage('images/oyun_ist.jpg'),
              itemName: 'Tişört',
              itemInfo: 'Rengarenk güzel renkleri ile bir Oyun İstanbul tişörtü alabilirsin.',
              point: '25000p',
            ),
          ),
          ComingSoonItem(),
          ComingSoonItem(),
          ComingSoonItem(),
          ComingSoonItem(),
        ],
      ),
    );
  }
}

class ComingSoonItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: DukkanItemWidget(
        itemName: 'Yakında eklenecek',
        itemInfo: 'Yepyeni hediyeler çok yakında...',
        point: '...',
      ),
    );
  }
}

class DukkanItemWidget extends StatelessWidget {
  DukkanItemWidget({this.image, this.itemName, this.itemInfo, this.point});
  final String itemName, itemInfo, point;
  final ImageProvider image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 3,
          child: AvatarAndTextRow(
            image: image,
            text: itemName,
            minitext: itemInfo,
          ),
        ),
        Expanded(
          child: TaskCollectButton(
            text: point,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
