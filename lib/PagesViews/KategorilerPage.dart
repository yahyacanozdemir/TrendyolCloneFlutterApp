import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';



class Kategoriler extends StatefulWidget {



  @override
  _KategorilerState createState() => _KategorilerState();
}

class _KategorilerState extends State<Kategoriler> with TickerProviderStateMixin {
  int value1; // Dropdown Liste kontrolcüsü
  int value2; // Dropdown Liste kontrolcüsü
  int value3; // Dropdown Liste kontrolcüsü
  int value4; // Dropdown Liste kontrolcüsü
  int value5; // Dropdown Liste kontrolcüsü
  int value6; // Dropdown Liste kontrolcüsü
  int value7; // Dropdown Liste kontrolcüsü
  int value8; // Dropdown Liste kontrolcüsü
  int value9; // Dropdown Liste kontrolcüsü
  int value10; // Dropdown Liste kontrolcüsü
  int value11; // Dropdown Liste kontrolcüsü
  int value12; // Dropdown Liste kontrolcüsü

  List <String> kadinGiyimAltKategorileri = [
    "Sweatshirt","T-shirt","Mont","Kazak","Giyim","Sweatshirt","T-shirt","Mont","Kazak","Giyim","Sweatshirt","T-shirt","Mont","Kazak","Kazak"
  ];

  List <String> taslakAltKategorileri = [
    "Alt Kategori 1","Alt Kategori 2","Alt Kategori 3","Alt Kategori 4","Alt Kategori 5","Alt Kategori 6","Alt Kategori 7","Alt Kategori 8","Alt Kategori 9","Alt Kategori 10","Alt Kategori 11","Alt Kategori 12","Alt Kategori 13","Alt Kategori 14","Alt Kategori 15"
  ];





  TabController kontrolcu;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //TabView kontrolcüsünün özellikleri
    kontrolcu = TabController(length: 12, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Container(
          alignment: Alignment.centerLeft,
          height: 35,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {},
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
      backgroundColor: Colors.grey[100],

      body:
      SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: VerticalTabs(
            contentScrollAxis : Axis.vertical,
            indicatorSide: IndicatorSide.start,
            indicatorColor: Colors.white,
            selectedTabBackgroundColor: Colors.orange,
            tabsWidth: 100,
            disabledChangePageFromContentView: true,
            tabs: <Tab>[
              Tab(child: createLeftCategories(Icon(Icons.person), "Sana Özel"),),
              Tab(child: createLeftCategories(Icon(Icons.person_add_alt_1), "Kadın"),),
              Tab(child: createLeftCategories(Icon(Icons.person_add), "Erkek")),
              Tab(child: createLeftCategories(Icon(Icons.home_work_outlined), "Ev & Yaşam")),
              Tab(child: createLeftCategories(Icon(Icons.all_out_sharp), "Kozmetik & Kişisel Bakım")),
              Tab(child: createLeftCategories(Icon(Icons.child_friendly), "Anne & Çocuk")),
              Tab(child: createLeftCategories(Icon(Icons.devices),  "Elektronik")),
              Tab(child: createLeftCategories(Icon(Icons.watch), "Saat & Aksesuar")),
              Tab(child: createLeftCategories(Icon(Icons.shopping_bag_rounded), "Ayakkabı & Çanta")),
              Tab(child: createLeftCategories(Icon(Icons.shopping_cart_sharp), "Süpermarket")),
              Tab(child: createLeftCategories(Icon(Icons.sports_baseball_rounded), "Spor & Outdor")),
              Tab(child: createLeftCategories(Icon(Icons.home_work_outlined), "Mobilya")),

            ],
            contents: <Widget>[
              tabsContent('Sana Özel Kategorisi', 'Change page by scrolling content is disabled in settings. Changing contents pages is only available via tapping on tabs'),
              Container(
                  color: Colors.black12,
                  child: ListView(
                           children: [
                             createDropdownCat(value1,"Giyim",kadinGiyimAltKategorileri,),
                             createDropdownCat(value2,"İç Giyim",taslakAltKategorileri),
                             createDropdownCat(value3,"Ayakkabı",taslakAltKategorileri),
                             createDropdownCat(value4,"Aksesuar",taslakAltKategorileri),
                             createDropdownCat(value5,"Çanta",taslakAltKategorileri),
                             createDropdownCat(value6,"Kozmetik & Kişisel Bakım",taslakAltKategorileri),
                             createDropdownCat(value7,"Spor Outdoor",taslakAltKategorileri),
                             createDropdownCat(value8,"Lüks Designer",taslakAltKategorileri),
                           ],
                         ),
                      ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Giyim",taslakAltKategorileri,),
                    createDropdownCat(value2,"Ayakkabı",taslakAltKategorileri,),
                    createDropdownCat(value3,"Saat & Gözlük & Aksesuar",taslakAltKategorileri,),
                    createDropdownCat(value4,"Çanta",taslakAltKategorileri,),
                    createDropdownCat(value5,"İç Giyim",taslakAltKategorileri,),
                    createDropdownCat(value6,"Kozmetik & Kişisel Bakım",taslakAltKategorileri,),
                    createDropdownCat(value7,"Spor Outdoor",taslakAltKategorileri,),
                    createDropdownCat(value8,"Lüks Designer",taslakAltKategorileri,),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Ev Tekstili",taslakAltKategorileri,),
                    createDropdownCat(value2,"Sofra & Mutfak",taslakAltKategorileri,),
                    createDropdownCat(value3,"Banyo",taslakAltKategorileri,),
                    createDropdownCat(value4,"Ev Dekorasyon & Aydınlatma",taslakAltKategorileri,),
                    createDropdownCat(value5,"Elektrikli Ev Aletleri",taslakAltKategorileri,),
                    createDropdownCat(value6,"Mobilya",taslakAltKategorileri),
                    createDropdownCat(value7,"Kitap & Hobi",taslakAltKategorileri),
                    createDropdownCat(value8,"Otomobil & Motosiklet",taslakAltKategorileri),
                    createDropdownCat(value9,"Kırtasiye & Ofis",taslakAltKategorileri),
                    createDropdownCat(value10,"Yapı Market & Hırdavat",taslakAltKategorileri),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Parfüm & Deodorant",taslakAltKategorileri),
                    createDropdownCat(value2,"Makyaj",taslakAltKategorileri),
                    createDropdownCat(value3,"Cilt Bakımı",taslakAltKategorileri),
                    createDropdownCat(value4,"Saç Bakım & Şekillendiriciler",taslakAltKategorileri),
                    createDropdownCat(value5,"Kişisel Bakım",taslakAltKategorileri),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Bebek",taslakAltKategorileri),
                    createDropdownCat(value2,"Giyim",taslakAltKategorileri),
                    createDropdownCat(value3,"Ayakkabı",taslakAltKategorileri),
                    createDropdownCat(value4,"Bebek Bakım",taslakAltKategorileri),
                    createDropdownCat(value5,"Beslenme & Emzirme",taslakAltKategorileri),
                    createDropdownCat(value6,"Taşıma & Güvenlik",taslakAltKategorileri),
                    createDropdownCat(value7,"Oyuncak",taslakAltKategorileri),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Cep Telefonu & Aksesuar",taslakAltKategorileri),
                    createDropdownCat(value2,"Bilgisayar & Tablet",taslakAltKategorileri),
                    createDropdownCat(value3,"Oyunculara Özel",taslakAltKategorileri),
                    createDropdownCat(value4,"Foto & Kamera",taslakAltKategorileri),
                    createDropdownCat(value5,"Elektrikli Ev Aletleri",taslakAltKategorileri),
                    createDropdownCat(value6,"Beyaz Eşya",taslakAltKategorileri),
                    createDropdownCat(value7,"TV & Görüntü & Ses",taslakAltKategorileri),
                    createDropdownCat(value8,"Oyun & Oyun Konsolları",taslakAltKategorileri),
                    createDropdownCat(value9,"Kişisel Bakım Aletleri",taslakAltKategorileri),
                    createDropdownCat(value10,"Giyilebilir Teknoloji",taslakAltKategorileri),
                    createDropdownCat(value11,"Klima & Isıtıcılar",taslakAltKategorileri),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Kadın",taslakAltKategorileri),
                    createDropdownCat(value2,"Erkek",taslakAltKategorileri),
                    createDropdownCat(value3,"Çocuk",taslakAltKategorileri),
                    createDropdownCat(value4,"Takı & Mücevher",taslakAltKategorileri),
                    createDropdownCat(value5,"Altın",taslakAltKategorileri),
                    createDropdownCat(value5,"Elektronik Aksesuarlar",taslakAltKategorileri),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Kadın Ayakkabı",taslakAltKategorileri),
                    createDropdownCat(value2,"Erkek Ayakkabı",taslakAltKategorileri),
                    createDropdownCat(value3,"Çocuk Ayakkabı",taslakAltKategorileri),
                    createDropdownCat(value4,"Kadın Çanta",taslakAltKategorileri),
                    createDropdownCat(value5,"Erkek Çanta",taslakAltKategorileri),
                    createDropdownCat(value5,"Çocuk Çanta",taslakAltKategorileri),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Ev Bakımı & Temizlik",taslakAltKategorileri),
                    createDropdownCat(value2,"Kişisel Bakım",taslakAltKategorileri),
                    createDropdownCat(value3,"Sağlık & Gıda Takviyesi",taslakAltKategorileri),
                    createDropdownCat(value4,"Gıda & İçecek",taslakAltKategorileri),
                    createDropdownCat(value5,"Bebek Bakımı",taslakAltKategorileri),
                    createDropdownCat(value6,"Petshop",taslakAltKategorileri),
                    createDropdownCat(value7,"Organik & Doğa",taslakAltKategorileri),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Spor Üst Giyim",taslakAltKategorileri),
                    createDropdownCat(value2,"Spor Alt Giyim",taslakAltKategorileri),
                    createDropdownCat(value3,"Spor Ayakkabu",taslakAltKategorileri),
                    createDropdownCat(value4,"Spor Ekipmanları",taslakAltKategorileri),
                    createDropdownCat(value5,"Outdoor",taslakAltKategorileri),
                    createDropdownCat(value6,"Sporcu Besinleri & Takviyeler",taslakAltKategorileri),
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                child: ListView(
                  children: [
                    createDropdownCat(value1,"Salon & Oturma Odası",taslakAltKategorileri),
                    createDropdownCat(value2,"Çalışma Odası",taslakAltKategorileri),
                    createDropdownCat(value3,"Yatak Odası",taslakAltKategorileri),
                    createDropdownCat(value4,"Dolaplar",taslakAltKategorileri),
                    createDropdownCat(value5,"Antre & Hol",taslakAltKategorileri),
                    createDropdownCat(value6,"Ofis Mobilyaları",taslakAltKategorileri),
                    createDropdownCat(value7,"Yemek Odası & Mutfak",taslakAltKategorileri),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }


  createLeftCategories(Icon icon_type, String cat_name){

    return Container(
      width: double.infinity,
      height: 72,
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(icon: icon_type, onPressed:null, color: Colors.grey[400],),
          Text(cat_name,style: TextStyle(fontSize: 10,),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
  createDropdownCat(int value , String cat_name, List<String> altKategori){
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      margin: EdgeInsets.all(1),
      color: Colors.white30,
      child: DropdownButtonFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white60,
            border: InputBorder.none
          ),
          isExpanded: true,
          hint: Text(cat_name),
          value: value,
          items: [
            DropdownMenuItem(
              child: Text(cat_name +" "+ altKategori[0]),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text(cat_name +" "+ altKategori[1]),
              value: 2,
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[2]),
                value: 3
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[3]),
                value: 4
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[4]),
                value: 5
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[5]),
                value: 6
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[6]),
                value: 7
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[7]),
                value: 8
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[8]),
                value: 9
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[9]),
                value: 10
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[10]),
                value: 11
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[11]),
                value: 12
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[12]),
                value: 13
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[13]),
                value: 14
            ),
            DropdownMenuItem(
                child: Text(cat_name +" "+ altKategori[14]),
                value: 15
            ),
          ],
          onChanged:
              (value) {
            setState(() {
              selectCat = value;
            });
          }),
    ) ;
  }

  String selectCat="";


  Widget tabsContent(String caption, [ String description = '' ] ) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          Text(
            caption,
            style: TextStyle(fontSize: 25),
          ),
          Divider(height: 20, color: Colors.black45,),
          Text(
            description,
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }


}


