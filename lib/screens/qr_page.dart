import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/rounded_button.dart';
import 'main_page.dart';

class QRPage extends StatefulWidget {
  static String id = 'qr_page';
  @override
  _QRPageState createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  int storyCounter = 0;

  final List<String> hikaye = [
    'Selam Korucu xxx yoğurtçu parkına hoş geldin! Yoğurtçu Parkı, İstanbul\'un Kadıköy ilçesinde, Moda semtinde bulunan parktır. Yoğurtçu Parkında uzun zamandır unutulmuş, seni özlemle bekleyen birçok bitki ve hayvan bulunmakta. İyi şanslar korucu!',
    'Şu an yoğurtçu çeşmesinde bulunuyorsun. Yoğurtçu parkı adını 1800\'lerin başlarında yoğurtçuların yaptırdığı söylenen bu çeşmeden almaktadır. Daha önce farklı bir konumda bulunan çeşme, 1994 yılında Kadıköy Belediyesi tarafından restore edilerek parkın içine taşındı.',
    'Çeşmenin etrafında bulunan Çınar ağaçlarını görebilirsin! Çınar, çınargiller familyasından Platanus cinsini oluşturan uzun boylu kalın çaplı ağaç türlerinin adıdır. Türkiye\'de doğal olarak yayılış gösteren tek tür, doğu çınarıdır.',
    'Harika! Parkın ilk görevini tamamladın! Şimdi haritada gözükmekte olan Yunus Emre heykeli konumuna gitmeli ve QR kodu okutmalısın, acaba orada bizi ne tür bitkiler bekliyor?',
    'Yunus Emre Heykeline hoş geldin korucu! Bu heykelin etrafında Fıstık Çamları bulunmakta! Şimdi Fıstık Çamlarını öğrenmeye ne dersin?',
    'Fıstık çamı (Pinus pinea), çamgiller (Pinaceae) familyasından Ege, Akdeniz sahilleri, Portekiz, İspanya, İtalya, Girit ve Türkiye\'de yayılış gösteren çam türüdür. Gençken yuvarlak, yaşlı halde dağınık şemsiye gibi bir yapıya sahiptir. Gençken kuvvetli büyür. 20–25 metre boyutlara ulaşabilir. Düzgün bir gövdeye ve bu gövdeden dik olarak çıkan yatay duruşlu dallara sahiptir. Dostlarımız sincapların çok sevdiği fıstıklar bu ağaçta yetişir.',
    'Harika! Parkın ikinci görevini tamamladın! Şimdi son istikametimiz haritada görebileceğin Deniz Kızı Heykeli! Konuma git ve QR kodu okut.',
    'Deniz Kızı Heykeline Hoş geldin korucu! Bu heykelin etrafında Doğu Çınarları, Fıstık Çamları, Palmiyeler ve Dişbudaklar bulunmakta.',
    'Palmiye, palmiyegiller (Arecaceae, Palmae) familyasını oluşturan tropik iklimlerde yetişen ve hoş bir görüntü oluşturan türlerin ortak adıdır. Palmiyeler konik gövdelidirler.  Bu tür ağaçların dalları hemen hiç yoktur. Bir gövdeden birçok yaprak çıkmaktadır.',
    'Dişbudak, zeytingiller familyasının Fraxinus cinsini oluşturan türüne göre maksimum boyu 10–30 m arasında değişebilen dolgun ve düzgün gövdeli yuvarlak tepeli ağaç türlerinin ortak adıdır. Genellikle sulak ya da derin toprağa sahip yerlerde bulunurlar. Yaprak döken veya bazen herdem yeşil ağaç veya çalı formunda olabilirler.',
    'Yoğurtçu Parkı\'nda sana anlatabileceklerim bu kadardı korucu, unutma! Hatırlanması gereken birçok ağaç ve hayvan İstanbulun her tarafında seni bekliyor.',
    'Yoğurtçu Parkının hikayesini tamamladın! Sayende bir parkımız ve içindeki canlılar unutulma tehlikesini atlattı! Sana bu çabaların için çok teşekkür ediyoruz. Bu çabalarından dolayı sana Yoğurtçu rozetini takdim ediyoruz. Şimdi daha fazla puan kazanmak için sana ufak bir testimiz var!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('QR KOD'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 5, child: Image(image: AssetImage('images/storyImages/Resim$storyCounter.png'))),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: kColorOyunIstYesil,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    hikaye[storyCounter],
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: RoundedButton(
                text: 'İleri',
                onPressed: () {
                  setState(() {
                    if (storyCounter != 11) {
                      storyCounter++;
                    } else {
                      Navigator.pushNamed(context, MainPage.id);
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
