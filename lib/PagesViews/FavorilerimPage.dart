import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/Urun_Karti.dart';
import 'package:cool_alert/cool_alert.dart';


class FavorilerimPage extends StatefulWidget {
  @override
  _FavorilerimPageState createState() => _FavorilerimPageState();
}

class _FavorilerimPageState extends State<FavorilerimPage> with SingleTickerProviderStateMixin {
  TabController kontrolcu2;
  int value1;
  int value2;
  int value3;
  int value4;
  int value5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kontrolcu2 = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Favorilerim",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            SizedBox(
              height: 1,
              child: Container(
                color: Colors.grey[400],
              ),
            ), //İnce Bir Çizgi
            Container(
              height: 50,
              color: Colors.white,
              child: TabBar(
                controller: kontrolcu2,
                indicatorColor: Colors.orange[800],
                indicatorPadding: EdgeInsets.only(top: 100),
                labelColor: Colors.orange[800],
                unselectedLabelColor: Colors.grey,
                tabs: [Text("Tümü"), Text("Koleksiyonlarım")],
              ),
            ), // Tabların Olduğu Container
            Container(
              height: 850,
              padding: EdgeInsets.only(left: 10,right: 10),
              child: TabBarView(
                controller: kontrolcu2,
                children: [
                  Column(
                    children: [
                      Urun_Karti(
                        isAnasayfaCard: false,
                        isFavoriCard: true,
                        isSepetCard: false,
                        value: value1,
                        foto_url: "https://cdn.dsmcdn.com//assets/dev/product/media/images/20200326/17/572274/66589665/1/1_org.jpg",
                        marka: "Mavi",
                        aciklama: "Jet black Mavi slim-fit pantolon",
                        puan: 4,
                        kargo_tipi: "Bedava",
                        fiyat: 249.99,
                        ebat: true,
                      ),
                      Urun_Karti(
                        isAnasayfaCard: false,
                        isFavoriCard: true,
                        isSepetCard: false,
                        value: value2,
                        foto_url: "https://cdn.dsmcdn.com//ty9/product/media/images/20200819/23/8425288/22374040/1/1_org.jpg",
                        marka: "Nike",
                        aciklama: "All Access Soleday Bkpk",
                        puan: 5,
                        kargo_tipi: "10.99",
                        fiyat: 197.03,
                        ebat: false,
                      ),
                      Urun_Karti(
                        isAnasayfaCard: false,
                        isFavoriCard: true,
                        isSepetCard: false,
                        value: value3,
                        foto_url: "https://cdn.dsmcdn.com//ty13/product/media/images/20200924/19/11768518/86418975/1/1_org.jpg",
                        marka: "Altınyıldız Classics ",
                        aciklama: "Erkek Lacivert Standart Fit Düz Yünlü Kışlık Kaban",
                        puan: 4,
                        kargo_tipi: "Bedava",
                        fiyat: 674.99,
                        ebat: true,
                      ),
                      Urun_Karti(
                        isAnasayfaCard: false,
                        isFavoriCard: true,
                        isSepetCard: false,
                        value: value4,
                        foto_url: "https://cdn.dsmcdn.com//ty3/product/media/images/20200528/10/1807651/72047419/1/1_org.jpg",
                        marka: "Apple",
                        aciklama: "MacBook Pro MXK32TU/A i5 8GB 256GB SSD 1.4Ghz 8.Nesil 13",
                        puan: 5,
                        kargo_tipi: "Bedava",
                        fiyat: 13.706,
                        ebat: false,
                      ),
                    ],
                  ),
                  Container(
                    height: 550,
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 40,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[200],
                                    width: 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text("Koleksiyonlarım (0)"),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 150,
                              height: 40,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[200],
                                    width: 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text("Kaydettiklerim (0)"),
                            ),
                          ],
                        ),
                        Center(
                          heightFactor: 2,
                          child:
                          Column(
                            children: [
                              Image.network(
                                "https://static.thenounproject.com/png/1650001-200.png",
                                scale: 2,),
                              SizedBox(height: 20,),
                              Text("Koleksiyonlarım", style: TextStyle(color: Colors
                                  .grey[900]),),
                              SizedBox(height: 10,),
                              Text(
                                "Beğendiğin ürünleri gruplayarak koleksiyonlarına kaydet, arkadaşlarınla paylaş!",
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
                                  child: Text("Koleksiyon Oluştur",
                                    style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog() {
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



