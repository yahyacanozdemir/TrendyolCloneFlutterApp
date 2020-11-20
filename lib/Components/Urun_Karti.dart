import 'package:flutter/material.dart';
import '../PagesViews/AnasayfaPage.dart';
import 'package:cool_alert/cool_alert.dart';



class Urun_Karti extends StatefulWidget {
  final bool isAnasayfaCard;
  final bool isFavoriCard;
  final bool isSepetCard;
  final int value;
  final String foto_url;
  final String marka;
  final String aciklama;
  final int puan;
  final String kargo_tipi;
  final double fiyat;
  final double eskiFiyat;
  final String indirimMiktari;
  final bool ebat;
  final String ebat_tipi;

  const Urun_Karti(
      {Key key,
      this.isAnasayfaCard,
      this.isFavoriCard,
      this.isSepetCard,
      this.value,
      this.foto_url,
      this.marka,
      this.aciklama,
      this.puan,
      this.kargo_tipi,
      this.fiyat,
      this.ebat,
      this.ebat_tipi,
      this.indirimMiktari, this.eskiFiyat})
      : super(key: key);

  @override
  _Urun_Karti createState() => _Urun_Karti();
}

class _Urun_Karti extends State<Urun_Karti> {
  @override
  Widget build(BuildContext context) {
    if (widget.isAnasayfaCard) return createIndirimliProductCard();

    if (widget.isFavoriCard) return createFavProductCard();

    if (widget.isSepetCard)
      return createSepetProductCard();
    else
      return Container();
  }

  createFavProductCard() {
    String btn_txt = "Sepete Ekle";

    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 125,
            child: Image.network(
              widget.foto_url,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 215,
            padding: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.marka,
                      style: TextStyle(color: Colors.black),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert_outlined),
                      onPressed: () {
                        showAlertDialog();
                      },
                    ),
                  ],
                ),
                Text(
                  widget.aciklama,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                createProdutcStar(),
                Text(
                  'Kargo ${widget.kargo_tipi}',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Text(
                  '${widget.fiyat} TL',
                  style: TextStyle(color: Colors.orange[800]),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 25,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey[500], width: 2),
                      ),
                      child: DropdownButton(
                          isExpanded: true,
                          hint: Text(
                            "Seçiniz",
                          ),
                          value: widget.value,
                          items: [
                            if (!widget.ebat)
                              DropdownMenuItem(
                                  child: Text("Tek Ebat"), value: 1),
                            if (widget.ebat)
                              DropdownMenuItem(child: Text("S"), value: 1),
                            if (widget.ebat)
                              DropdownMenuItem(child: Text("M"), value: 2),
                            if (widget.ebat)
                              DropdownMenuItem(child: Text("L"), value: 3),
                          ],
                          onChanged: (value) {
                            setState(() {
                              value = value;
                            });
                          }),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          AlertDialog();
                        });
                      },
                      child: GestureDetector(
                        onTap: () {
                          showAlertDialog();
                        },
                        child: Container(
                          width: 110,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.orange[800], width: 2),
                          ),
                          child: Text(
                            "Sepete Ekle",
                            style: TextStyle(color: Colors.orange[800]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  createSepetProductCard() {
    String btn_txt = "Sepete Ekle";

    return Container(
      width: double.infinity,
      height: 165,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5, color: Colors.grey[300]),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 125,
            child: Image.network(
              widget.foto_url,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 215,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.marka,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  widget.aciklama,
                  style: TextStyle(color: Colors.grey[600], fontSize: 10),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.ebat_tipi,
                  style: TextStyle(color: Colors.grey[600], fontSize: 10),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${widget.fiyat} TL',
                      style: TextStyle(color: Colors.orange[800]),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () {
                        showAlertDialog();
                      },
                      child: Container(
                        width: 80,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.orange[800], width: 2),
                        ),
                        child: Text(
                          "Sepete Ekle",
                          style: TextStyle(color: Colors.orange[800]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  createIndirimliProductCard() {
    return
      Container(
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Image.network(
                    widget.foto_url)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:7.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${widget.marka} ',
                          style: TextStyle(fontSize: 15),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Container(
                              height: 25,
                              child: Text(
                                '${widget.aciklama}',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(child:Padding( padding: EdgeInsets.only(left: 7.0), child: createProdutcStar(),)),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Text('${widget.eskiFiyat}',style: TextStyle(fontSize: 10,color: Colors.grey,),),
                        GestureDetector(
                          onTap: (){showAlertDialog();},
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 1, color: Colors.orange[800]),
                                left: BorderSide(width: 1, color: Colors.orange[800]),
                                right: BorderSide(width: 1, color: Colors.orange[800]),
                                bottom: BorderSide(width: 1, color: Colors.orange[800]),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                '${widget.indirimMiktari}',
                                  style: TextStyle(fontSize: 10),
                                ),
                                Text(
                                    '${widget.fiyat}',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,)
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

  createProdutcStar (){

   List starList1 = [
   Icon(Icons.star,size: 15,color: Colors.orange[800],),
   Icon(Icons.star,size: 15,color: Colors.grey[600],),
   Icon(Icons.star,size: 15,color: Colors.grey[600],),
   Icon(Icons.star,size: 15,color: Colors.grey[600],),
   Icon(Icons.star,size: 15,color: Colors.grey[600],),
   ];

   List starList2 = [
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.grey[600],),
     Icon(Icons.star,size: 15,color: Colors.grey[600],),
     Icon(Icons.star,size: 15,color: Colors.grey[600],),
   ];

   List starList3 = [
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.grey[600],),
     Icon(Icons.star,size: 15,color: Colors.grey[600],),
   ];

   List starList4 = [
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.grey[600],),
   ];

   List starList5 = [
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
     Icon(Icons.star,size: 15,color: Colors.orange[800],),
   ];

   if(widget.puan ==0){
     return
       Padding(
         padding: const EdgeInsets.only(left:3.0,top: 3.0),
         child: Row(
           children: [
             Text("(Yeni Ürün)",style: TextStyle(fontSize: 10),),
           ],
         ),
       );
   };

   if(widget.puan ==1){
     return
       Row(
         children: [
         starList1[0],
         starList1[1],
         starList1[2],
         starList1[3],
         starList1[4],
         ],
       );
   };

   if(widget.puan ==2){
     return Row(
       children: [
         starList2[0],
         starList2[1],
         starList2[2],
         starList2[3],
         starList2[4],
       ],
     );
   };

   if(widget.puan ==3){
     return Row(
       children: [
         starList3[0],
         starList3[1],
         starList3[2],
         starList3[3],
         starList3[4],
       ],
     );
   };

   if(widget.puan ==4){
     return Row(
       children: [
         starList4[0],
         starList4[1],
         starList4[2],
         starList4[3],
         starList4[4],
       ],
     );
   };

   if(widget.puan ==5){
     return Row(
       children: [
         starList5[0],
         starList5[1],
         starList5[2],
         starList5[3],
         starList5[4],
       ],
     );
   };

  }

}
