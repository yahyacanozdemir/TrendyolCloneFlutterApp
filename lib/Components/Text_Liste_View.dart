import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';



class Text_List extends StatefulWidget {
  final isBildirimIcon;
  final String leadingImgUrl;
  final Icon leadingIconType;
  final IconData actionIconType;
  final String baslik;
  final String aciklama;
  final String tarih;

  const Text_List({Key key, this.leadingIconType, this.actionIconType, this.baslik, this.aciklama, this.tarih, this.isBildirimIcon, this.leadingImgUrl,}) : super(key: key);


  
  
  @override
  _Text_ListState createState() => _Text_ListState();
}

class _Text_ListState extends State<Text_List> {
  @override
  Widget build(BuildContext context) {
    if (widget.aciklama!=null) {
      return Container(
        height: 100,
        padding: EdgeInsets.only(top: 10,bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if(widget.isBildirimIcon)
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 50,
                    child: IconButton(icon: Icon(Icons.notifications),color: Colors.orange[800],iconSize: 35, onPressed: (){}),
                  ),

                if(!widget.isBildirimIcon)
                Container(
                  width: 50,
                  color: Colors.black,
                ),

                Container(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(widget.baslik,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),),
                      Text(widget.aciklama,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400)),
                      SizedBox(height: 7),
                      Text(widget.tarih, style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: IconButton(icon: Icon(Icons.close), onPressed: null)),
              ],
            ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 0.5,
            color: Colors.grey[400],
          ),
          ],
        ),
      );
    }


    else {
      return Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            IconButton(icon: widget.leadingIconType, onPressed: () {
            }),
            SizedBox(width: 20),
            GestureDetector(onTap: (){
              showAlertDialog();
            },child: Text(widget.baslik)),
          ],
        ),
      );
    }
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
