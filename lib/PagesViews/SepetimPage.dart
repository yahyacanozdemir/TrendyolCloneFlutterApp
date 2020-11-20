import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cool_alert/cool_alert.dart';
import '../Components/Urun_Karti.dart';



class SepetimPage extends StatefulWidget {
  @override
  _SepetimPageState createState() => _SepetimPageState();
}

class _SepetimPageState extends State<SepetimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Sepetim",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                    child: Icon(
                  Icons.shopping_cart,
                  size: 75,
                  color: Colors.orange[800],
                )),
                SizedBox(height: 20,),
                Text("Sepetim",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,letterSpacing: 5),),
                SizedBox(height: 10,),
                Text("Sepetinizde Ürün Bulunmamaktadır",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10),),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    showAlertDialog();
                  },
                  child: Container(
                    width: 350,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration
                      (
                      color: Colors.orange[800],
                    ),
                    child: Text("Alışverişe Devam Et",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 750,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Container(
                      child: Text("Önceden Eklediklerim",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),textAlign: TextAlign.left,),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(15),),
                  Urun_Karti(
                    isAnasayfaCard: false,
                    isFavoriCard: false,
                    isSepetCard: true,
                    foto_url: "https://cdn.dsmcdn.com//Assets/ProductImages/oa/91/6253258/1/9023012640720_1_org.jpg",
                    marka: "Guess",
                    aciklama: "GUW1264G2 Kol Saati",
                    puan: 4,
                    kargo_tipi: "Bedava",
                    fiyat: 499.50,
                    ebat: true,
                    ebat_tipi: "Tek Ebat",
                  ),
                  Urun_Karti(
                    isAnasayfaCard: false,
                    isFavoriCard: false,
                    isSepetCard: true,
                    foto_url: "https://cdn.dsmcdn.com//ty8/product/media/images/20200720/21/5400623/57616602/1/1_org.jpg",
                    marka: "Apple ",
                    aciklama: "iPhone 11 128GB Beyaz Cep Telefonu (Apple Türkiye Garantili) AP-IPHO11128",
                    puan: 5,
                    kargo_tipi: "Bedava",
                    fiyat: 7872.99,
                    ebat: true,
                    ebat_tipi: "128 GB",
                  ),
                  Urun_Karti(
                    isAnasayfaCard: false,
                    isFavoriCard: false,
                    isSepetCard: true,
                    foto_url: "https://cdn.dsmcdn.com//assets/product/images/1232/12970351/1/1_org.jpg",
                    marka: "Sony",
                    aciklama: "Playstation 4 Pro 1 TB - Türkçe Menü 0711719504023",
                    puan: 5,
                    kargo_tipi: "Bedava",
                    fiyat: 4249.99,
                    ebat: true,
                    ebat_tipi: "1 TB",
                  ),
                  Urun_Karti(
                    isAnasayfaCard: false,
                    isFavoriCard: false,
                    isSepetCard: true,
                    foto_url: "https://cdn.dsmcdn.com//ty6/product/media/images/20200704/0/3804301/75860759/1/1_org.jpg",
                    marka: "Samsung",
                    aciklama: "75Q950T 75 190 Ekran Uydu Alıcılı 8K Ultra HD Smart QLED TV TV-Q950T",
                    puan: 5,
                    kargo_tipi: "Bedava",
                    fiyat: 62999.9,
                    ebat: false,
                    ebat_tipi: "Tek Ebat",
                  ),


                ],
              ),
            ),

          ],
        ),
      ),
    );
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
