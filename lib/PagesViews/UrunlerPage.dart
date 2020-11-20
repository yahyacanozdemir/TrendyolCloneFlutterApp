import 'package:flutter/material.dart';
import '../Components/Urun_Karti.dart';

import 'BildirimlerPage.dart';


class UrunlerPage extends StatefulWidget {
  @override
  _UrunlerPageState createState() => _UrunlerPageState();
}

class _UrunlerPageState extends State<UrunlerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 1,
        titleSpacing: -50,
        title: Container(
          alignment: Alignment.centerLeft,
          height: 35,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {Navigator.pop(context);},
                alignment: Alignment.centerLeft,
              ),
              Container(
                width: 250,
                height: 25,
                margin: EdgeInsets.only(top:16),
                child: TextField(
                  maxLines: 1,
                  decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Marka, ürün veya kategori ara"),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ), // Temsili Arama Alanı
      ),
      body: Container(
        child: SizedBox(
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.50,
              children: <Widget>[
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty15/product/media/images/20201012/17/15381985/92592232/1/1_org.jpg",marka: "Huawei ",aciklama: "Huaweı Matebook X - Gümüş, 16gb + 512gb", eskiFiyat: 13500.98,fiyat: 12999.98 , puan: 4,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty3/product/media/images/20200527/15/1761099/70376353/1/1_org.jpg",marka: "Huawei ",aciklama: "P40 Pro 256 GB Siyah (Huawei Türkiye Garantili)", eskiFiyat: 12500.98,fiyat: 11199.98 , puan: 5,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty15/product/media/images/20201012/16/15362724/92549340/0/0_org.jpg",marka: "Huawei ",aciklama: "Gt 2 Pro Gümüş Gri GT2ProSilver", eskiFiyat: 2999.98,fiyat: 2299.98 , puan: 3,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty11/product/media/images/20201019/13/17322024/95050832/1/1_org.jpg",marka: "Huawei ",aciklama: "Matepad 64gb 10:4 Ips Tablet 6901443382453", eskiFiyat: 3099.56,fiyat: 2899.67 , puan: 4,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty15/product/media/images/20201012/17/15381985/92592232/1/1_org.jpg",marka: "Huawei ",aciklama: "Huaweı Matebook X - Gümüş, 16gb + 512gb", eskiFiyat: 13500.98,fiyat: 12999.98 , puan: 4,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty3/product/media/images/20200527/15/1761099/70376353/1/1_org.jpg",marka: "Huawei ",aciklama: "P40 Pro 256 GB Siyah (Huawei Türkiye Garantili)", eskiFiyat: 12500.98,fiyat: 11199.98 , puan: 5,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty15/product/media/images/20201012/16/15362724/92549340/0/0_org.jpg",marka: "Huawei ",aciklama: "Gt 2 Pro Gümüş Gri GT2ProSilver", eskiFiyat: 2999.98,fiyat: 2299.98 , puan: 3,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty11/product/media/images/20201019/13/17322024/95050832/1/1_org.jpg",marka: "Huawei ",aciklama: "Matepad 64gb 10:4 Ips Tablet 6901443382453", eskiFiyat: 3099.56,fiyat: 2899.67 , puan: 4,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty15/product/media/images/20201012/17/15381985/92592232/1/1_org.jpg",marka: "Huawei ",aciklama: "Huaweı Matebook X - Gümüş, 16gb + 512gb", eskiFiyat: 13500.98,fiyat: 12999.98 , puan: 4,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty3/product/media/images/20200527/15/1761099/70376353/1/1_org.jpg",marka: "Huawei ",aciklama: "P40 Pro 256 GB Siyah (Huawei Türkiye Garantili)", eskiFiyat: 12500.98,fiyat: 11199.98 , puan: 5,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty15/product/media/images/20201012/16/15362724/92549340/0/0_org.jpg",marka: "Huawei ",aciklama: "Gt 2 Pro Gümüş Gri GT2ProSilver", eskiFiyat: 2999.98,fiyat: 2299.98 , puan: 3,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty11/product/media/images/20201019/13/17322024/95050832/1/1_org.jpg",marka: "Huawei ",aciklama: "Matepad 64gb 10:4 Ips Tablet 6901443382453", eskiFiyat: 3099.56,fiyat: 2899.67 , puan: 4,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty15/product/media/images/20201012/17/15381985/92592232/1/1_org.jpg",marka: "Huawei ",aciklama: "Huaweı Matebook X - Gümüş, 16gb + 512gb", eskiFiyat: 13500.98,fiyat: 12999.98 , puan: 4,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty3/product/media/images/20200527/15/1761099/70376353/1/1_org.jpg",marka: "Huawei ",aciklama: "P40 Pro 256 GB Siyah (Huawei Türkiye Garantili)", eskiFiyat: 12500.98,fiyat: 11199.98 , puan: 5,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty15/product/media/images/20201012/16/15362724/92549340/0/0_org.jpg",marka: "Huawei ",aciklama: "Gt 2 Pro Gümüş Gri GT2ProSilver", eskiFiyat: 2999.98,fiyat: 2299.98 , puan: 3,indirimMiktari: "Sepette İndirim",),
                Urun_Karti(isAnasayfaCard: true, foto_url: "https://cdn.dsmcdn.com//ty11/product/media/images/20201019/13/17322024/95050832/1/1_org.jpg",marka: "Huawei ",aciklama: "Matepad 64gb 10:4 Ips Tablet 6901443382453", eskiFiyat: 3099.56,fiyat: 2899.67 , puan: 4,indirimMiktari: "Sepette İndirim",),

              ],
            ),
        ),

      ),
    );
  }
}
