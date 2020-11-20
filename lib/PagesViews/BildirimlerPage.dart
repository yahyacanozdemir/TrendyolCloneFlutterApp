import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

import '../Components/Text_Liste_View.dart';

class Bildirimler extends StatefulWidget {
  @override
  _BildirimlerState createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> with TickerProviderStateMixin {
  int index = -1;

  final List<String> basliklar = [
    "Fiyatı Düştü !",
    "Her an tükenebilir",
    "Yepyeni Bir Hizmet : Hızlı Market",
    "Fiyatı Düştü!",
    "Tükenmek Üzere",
    "Stoğu Azaldı",
    "Aradığını Bulamadın mı?",
    "Şanslı Günündesin",
    "Sepetinde ürün kaldı",
    "Teslimat",
    "Sipariş Takibi",
    "Siparişini Aldık",
    "Sepet sepet indirim",
    "Teslimat",
    "İade takibi",
    "İade Onayı",
    "Bu koleksiyon kaçmaz",
    "Teslimat",
    "Acele Et",
    "Stoğu Azaldı",
  ];

  final List<String> aciklamalar = [
    "Baktığın bir ürüne indirim geldi. Acele et, tükenmeden al!",
    "İlgilendiğin bir ürüne seninle beraber 3289 kişi daha baktı. Acele et!",
    "Binlerce taze ürün market fiyatına 30 dakikada teslimatla kapında!",
    "Favorilerine eklediğin bir ürüne indirim geldi. Acele et, tükenmeden al!",
    "Favorilerine eklediğin bir ürüne son 24 saatte 15 kişi baktı!",
    "Favorilerindeki bir ürün tükenmek üzere!!!",
    "Apple markasının çok satanlarını keşfet.",
    "Sepetindeki ürünler hala seni bekliyor",
    "Acele et, sepetindeki ürünleri tükenmeden al.",
    "644537508 numaralı siparişini teslim ettik. Güzel günlerde kullanmanı dileriz.",
    "644537508 numaralı teslimatını kargoya verdiik.",
    "644537508 numaralı siparişin onaylandı.",
    "Üstelik kargo bedava! Acele et, eksiklerini tamamla!",
    "644537510 numaralı siparişini teslim ettik. Güzel günlerde kullanmanı dileriz",
    "524532810 kodlu paketin yola çıktı. Kargo hareketlerini takip edebilirsin.",
    "524532810 kodlu siparişin için iade talebin onaylandı. Ücret iadeni yaptık.",
    "Bu koleksiyon kaçmaz",
    "935658591 numaralı siparişini teslim ettik. Güzel günlerde kullanmanı dileriz.",
    "Favorilerindeki bir ürün tükenmek üzere!!!",
    "Favorilerine eklediğin bir ürüne son 24 saatte 15 kişi baktı!",
  ];

  final List<String> tarihler = [
    "14/11/2020",
    "13/10/2020",
    "06/10/2020",
    "05/10/2020",
    "25/09/2020",
    "20/09/2020",
    "15/09/2020",
    "10/09/2020",
    "05/09/2020",
    "14/11/2019",
    "13/10/2019",
    "06/10/2019",
    "05/10/2019",
    "25/09/2019",
    "20/09/2019",
    "15/09/2019",
    "10/09/2019",
    "05/09/2019",
    "10/09/2019",
    "05/09/2019",
  ];

  TabController kontrolcu;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kontrolcu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            "Bildirimlerim",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        backgroundColor: Colors.grey[300],
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            Container(
              height: 50,
              color: Colors.white,
              child: TabBar(
                controller: kontrolcu,
                indicatorColor: Colors.orange[800],
                indicatorPadding: EdgeInsets.only(top: 100),
                labelColor: Colors.orange[800],
                unselectedLabelColor: Colors.grey,
                tabs: [Text("Tümü",style: TextStyle(fontSize: 12),), Text("Bana Özel",style: TextStyle(fontSize: 12),) , Text("Siparişlerim",style: TextStyle(fontSize: 12),) , Text("Kampanyalar",style: TextStyle(fontSize: 11),)],
              ),
            ),
            Container(
              height: 2005,
              child: TabBarView(
                controller: kontrolcu,
                children: [
                  GestureDetector(
                    onTap: (){
                     showAlertDialog();
                    },
                    child: Column(
                        children: [
                          for (int i = 0; i < 20; i++) listeOlustur(),
                        ],
                      ),
                  ),
                  Center(
                    child:
                    Column(
                      children: [
                        SizedBox(height: 200,),
                        IconButton(icon: Icon(Icons.notifications),color: Colors.orange[800],iconSize: 75, onPressed: null),
                        SizedBox(height: 20,),
                        Text("Henüz Bildiriminiz Yok", style: TextStyle(color: Colors
                            .grey[900]),),
                        SizedBox(height: 10,),
                        Text(
                          "Henüz gelen bildirim bulamadık.",
                          style: TextStyle(color: Colors.grey[600],
                              fontSize: 11),),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: ()=>showAlertDialog(),
                          child: Container(
                            width: 350,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration
                              (
                              color: Colors.orange[800],
                            ),
                            child: Text("Alışverişe Devam Et",
                              style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child:
                    Column(
                      children: [
                        SizedBox(height: 200,),
                        IconButton(icon: Icon(Icons.notifications),color: Colors.orange[800],iconSize: 75, onPressed: null),
                        SizedBox(height: 20,),
                        Text("Henüz Bildiriminiz Yok", style: TextStyle(color: Colors
                            .grey[900]),),
                        SizedBox(height: 10,),
                        Text(
                          "Henüz gelen bildirim bulamadık.",
                          style: TextStyle(color: Colors.grey[600],
                              fontSize: 11),),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: ()=>showAlertDialog(),
                          child: Container(
                            width: 350,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration
                              (
                              color: Colors.orange[800],
                            ),
                            child: Text("Alışverişe Devam Et",
                              style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child:
                    Column(
                      children: [
                        SizedBox(height: 200,),
                        IconButton(icon: Icon(Icons.notifications),color: Colors.orange[800],iconSize: 75, onPressed: null),
                        SizedBox(height: 20,),
                        Text("Henüz Bildiriminiz Yok", style: TextStyle(color: Colors
                            .grey[900]),),
                        SizedBox(height: 10,),
                        Text(
                          "Henüz gelen bildirim bulamadık.",
                          style: TextStyle(color: Colors.grey[600],
                              fontSize: 11),),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: ()=>showAlertDialog(),
                          child: Container(
                            width: 350,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration
                              (
                              color: Colors.orange[800],
                            ),
                            child: Text("Alışverişe Devam Et",
                              style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ]),
        ),
      ),
    );
  }

  listeOlustur() {
    index = index + 1;
    return Text_List(
        isBildirimIcon: true,
        baslik: basliklar[index],
        aciklama: aciklamalar[index],
        tarih: tarihler[index]);
  }

  showAlertDialog(){
    return CoolAlert.show(
      context: context,
      title: "Hoop Hemşerim",
      confirmBtnColor: Colors.orange[800],
      animType: CoolAlertAnimType.scale,
      type: CoolAlertType.info,
      text: "Bu basit bir front-end uygulamasıdır.",
    );
  }

}
