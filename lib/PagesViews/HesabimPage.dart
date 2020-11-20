import 'package:flutter/material.dart';
import 'BildirimlerPage.dart';
import '../Components/Text_Liste_View.dart';


class HesabimPage extends StatefulWidget {
  @override
  _HesabimPageState createState() => _HesabimPageState();
}

class _HesabimPageState extends State<HesabimPage> {

  int index=-1;

  final List<String> basliklar = [
    "Siparişlerim",
    "Değerlendirmelerim",
    "Trendyol Cüzdanım",
    "Mesajlarım",
    "İndirim Kuponlarım",
    "Takip Ettiğim Mağazalar",
    "Trendyol Elite",
    "Hesap Bilgilerim",
    "Yardım",
    "Trendyol Asistan",
  ];

  /*
  Icons.all_inbox_outlined,
    Icons.message_rounded,
    Icons.account_balance_wallet,
    Icons.mail,
    Icons.credit_card_rounded,
    Icons.home_work_outlined,
    Icons.timeline_sharp,
    Icons.settings,
    Icons.help,
    Icons.phone_in_talk
   */

  final List<Icon> iconlar = [
    Icon(
      Icons.all_inbox_outlined,
    ),
    Icon(
      Icons.message_rounded,
    ),
    Icon(
      Icons.account_balance_wallet,
    ),
    Icon(
      Icons.mail,
    ),
    Icon(
      Icons.credit_card_rounded,
    ),
    Icon(
      Icons.home_work_outlined,
    ),
    Icon(
      Icons.timeline_sharp,
    ),
    Icon(
      Icons.settings,
    ),
    Icon(
      Icons.help,
    ),
    Icon(Icons.phone_in_talk),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Merhaba",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Bildirimler()));
              })
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(children: [
          for(int i=0;i<10;i++)
          listeOlustur(),
        ]),
      ),
    );
  }


  listeOlustur(){
    index=index+1;
      return Text_List(
        baslik: basliklar[index],
        leadingIconType: iconlar[index])
      ;
  }




}
