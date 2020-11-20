import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'file:///C:/flutterProjects/trendyol_clone/trendyol_clone_advanced/lib/PagesViews/HesabimPage.dart';
import 'file:///C:/flutterProjects/trendyol_clone/trendyol_clone_advanced/lib/PagesViews/SepetimPage.dart';
import 'PagesViews/AnasayfaPage.dart';
import 'PagesViews/KategorilerPage.dart';
import 'PagesViews/FavorilerimPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trendyol Arayüz Klon",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TrendyolClone(),
    );
  }
}


class TrendyolClone extends StatefulWidget {
  @override
  _TrendyolCloneState createState() => _TrendyolCloneState();
}


class _TrendyolCloneState extends State<TrendyolClone> {
  int _bottomButtonPos=0;
  List <Widget> _pages ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pages=[
    AnaSayfa(),
    Kategoriler(),
    FavorilerimPage(),
    SepetimPage(),
    HesabimPage(),
    ];

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:  _pages[_bottomButtonPos],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomButtonPos,
        selectedItemColor: Colors.orange[800],

        unselectedItemColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,), title: Text("Anasayfa",),),
          BottomNavigationBarItem(icon: Icon(Icons.search,), title: Text("Kategoriler",)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,), title: Text("Favorilerim",)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_sharp,), title: Text("Sepetim",)),
          BottomNavigationBarItem(icon: Icon(Icons.person,), title: Text("Hesabım",)),
        ],
        onTap: (int selectedBottomButtonPos){
          setState(() {
            _bottomButtonPos= selectedBottomButtonPos;
          });
        },
      ),
    );
  }


}
