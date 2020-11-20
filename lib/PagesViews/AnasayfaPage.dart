import 'package:flutter/material.dart';
import 'package:trendyol_clone_advanced/PagesViews/UrunlerPage.dart';
import 'BildirimlerPage.dart';
import '../Components/Icon_Cat_List.dart';
import '../Components/Vertical_Scrolling_Part.dart';
import '../Components/Tab_Cat_List_.dart';
import 'package:cool_alert/cool_alert.dart';



class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with SingleTickerProviderStateMixin {

  List kadinFastCatNames = [
    "Hızlı Market",
    "Spor Giyim",
    "Sen de Al!",
    "2. El !",
    "Sana Özel",
    "Ev & Yaşam",
    "Markalar",
    "Elektronik",
    "Kozmetik"

  ];
  List kadinFastCatBcgrUrls = [
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/migros__brand__37266.png",
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/adidas__brand__15.png",
    "https://cdn.dsmcdn.com/assets/t/y/creative/ds/Automation/Widget/2019/12/16/coksatanlar.png",
    "https://cdn.dsmcdn.com/Assets/t/y/Creative/ds/Automation/Widget/2020/3/17/Evyasam_Kitap_202003171343.jpg",
    "https://cdn.dsmcdn.com/assets/t/y/creative/ds/Automation/Widget/2019/12/16/seninicin.png",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/2020/11/7/Digital_202011070153.png",
    "https://cdn.dsmcdn.com/Assets/t/y/Creative/ds/Automation/Widget/2020/3/21/Xiaomi_202003210018.jpg",
    "https://cdn.dsmcdn.com/assets/banner/2019/uiux/240719/oyun.png",
    "https://cdn.dsmcdn.com/Assets/banner/Mobil/kozmetik/sac-bakim.png",

  ];

  List erkekFastCatNames = [
    "Spor Giyim",
    "Nike",
    "Puma",
    "Koton",
    "Altınyıldız",
    "Pierre Cardin",
    "Bershka",
    "Mavi",
    "Elektronik",
    "Sana Özel",
    "Sen de Al!",
    "Kozmetik",
    "Hızlı Market",
    "2. El !",
    "Ev & Yaşam",
    "Markalar",
  ];

  List erkekFastCatBcgrUrls = [
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/adidas__brand__15.png",
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/nike__brand__1479.png",
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/puma__brand__17.png",
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/koton__brand__842.png",
    "https://cdn.dsmcdn.com/Assets/t/y/Creative/ds/Automation/Widget/2020/3/21/Altinyildizclassics_202003212202.jpg",
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/pierre-cardin__brand__121.png",
    "https://cdn.dsmcdn.com/Assets/t/y/Creative/ds/Automation/Widget/2020/3/21/Bershka_202003210018.jpg",
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/mavi__brand__18.png",
    "https://cdn.dsmcdn.com/assets/banner/2019/uiux/240719/oyun.png",
    "https://cdn.dsmcdn.com/assets/t/y/creative/ds/Automation/Widget/2019/12/16/seninicin.png",
    "https://cdn.dsmcdn.com/assets/t/y/creative/ds/Automation/Widget/2019/12/16/coksatanlar.png",
    "https://cdn.dsmcdn.com/Assets/banner/Mobil/kozmetik/sac-bakim.png",
    "https://cdn.dsmcdn.com/assets/t/y/Creative/ds/Automation/SquareLogosIteration3/migros__brand__37266.png",
    "https://cdn.dsmcdn.com/Assets/t/y/Creative/ds/Automation/Widget/2020/3/17/Evyasam_Kitap_202003171343.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/2020/11/7/Digital_202011070153.png",
    "https://cdn.dsmcdn.com/Assets/t/y/Creative/ds/Automation/Widget/2020/3/21/Xiaomi_202003210018.jpg",
  ];


  List kadinPartBcgrUrls = [
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/541133/b1845f42ac_0_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/533989/e3b00e3117_1_new.jpg",
    "https://cdn.dsmcdn.com/ty22/campaign/banners/original/541088/9753a0ba39_1_new.jpg",
    "https://cdn.dsmcdn.com/ty23/campaign/banners/original/541376/d17f660abc_0_new.jpg",
    "https://cdn.dsmcdn.com/ty24/campaign/banners/original/536797/b25325fecd_0_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/13/KotonKadinErkekCocukTekstil_section1_202011132106_webBig.jpg",
    "https://cdn.dsmcdn.com/ty6/campaign/banners/original/534359/68be9dc9bb_0_new.jpg",
    "https://cdn.dsmcdn.com/ty24/campaign/banners/original/542309/ddbadfe9b2_0_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/13/CokSatanlardaDevIndirimKadinTekstil_section1_202011131731_webBig.jpg",
    "https://cdn.dsmcdn.com/ty23/campaign/banners/original/541363/cd9c66c541_0_new.jpg",
    "https://cdn.dsmcdn.com/ty6/campaign/banners/original/340995/35cb3a7c38_1_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/541133/b1845f42ac_0_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/533989/e3b00e3117_1_new.jpg",
    "https://cdn.dsmcdn.com/ty22/campaign/banners/original/541088/9753a0ba39_1_new.jpg",
    "https://cdn.dsmcdn.com/ty23/campaign/banners/original/541376/d17f660abc_0_new.jpg",
    "https://cdn.dsmcdn.com/ty24/campaign/banners/original/536797/b25325fecd_0_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/13/KotonKadinErkekCocukTekstil_section1_202011132106_webBig.jpg",
    "https://cdn.dsmcdn.com/ty6/campaign/banners/original/534359/68be9dc9bb_0_new.jpg",
    "https://cdn.dsmcdn.com/ty24/campaign/banners/original/542309/ddbadfe9b2_0_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/13/CokSatanlardaDevIndirimKadinTekstil_section1_202011131731_webBig.jpg",
    "https://cdn.dsmcdn.com/ty23/campaign/banners/original/541363/cd9c66c541_0_new.jpg",
    "https://cdn.dsmcdn.com/ty6/campaign/banners/original/340995/35cb3a7c38_1_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/541133/b1845f42ac_0_new.jpg",
  ];

  List erkekPartBcgrUrls = [
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/13/HoticKisYazKoleksiyonu_section2_202011131707_webBig.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/533989/216be998ef_2_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/541088/2491dd908a_2_new.jpg",
    "https://cdn.dsmcdn.com/ty23/campaign/banners/original/541376/d17f660abc_0_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/541133/d390fd0a04_2_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/2/DisGiyimdeTumAradiklariniz_section2_202011020906_webBig.jpg",
    "https://cdn.dsmcdn.com/ty20/campaign/banners/original/533768/4ee6454439_0_new.jpg",
    "https://cdn.dsmcdn.com/ty22/campaign/banners/original/540826/ee2cc830fe_2_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/13/KotonKadinErkekCocukTekstil_section2_202011132106_webBig.jpg",
    "https://cdn.dsmcdn.com/ty6/campaign/banners/original/387797/1bcd41fa63_2_new.jpg",
    "https://cdn.dsmcdn.com/ty22/campaign/banners/original/540560/a26d0dcaaa_2_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/533989/216be998ef_2_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/541088/2491dd908a_2_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/10/9/DamatErkekTekstil_section2_202010091606_webBig.jpg",
    "https://cdn.dsmcdn.com/ty23/campaign/banners/original/541376/d17f660abc_0_new.jpg",
    "https://cdn.dsmcdn.com/ty21/campaign/banners/original/541133/d390fd0a04_2_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/2/DisGiyimdeTumAradiklariniz_section2_202011020906_webBig.jpg",
    "https://cdn.dsmcdn.com/ty22/campaign/banners/original/540826/ee2cc830fe_2_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/13/KotonKadinErkekCocukTekstil_section2_202011132106_webBig.jpg",
    "https://cdn.dsmcdn.com/ty6/campaign/banners/original/387797/1bcd41fa63_2_new.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/10/9/DamatErkekTekstil_section2_202010091606_webBig.jpg",
    "https://cdn.dsmcdn.com/marketing/datascience/automation/BrandBoutique/2020/11/13/HoticKisYazKoleksiyonu_section2_202011131707_webBig.jpg",
  ];

    //TabView için kontrolcü
    TabController kontrolcu;
    int _currentIndex = 0;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    //TabView kontrolcüsünün özellikleri
    kontrolcu = TabController(length: 10, vsync: this);
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
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
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => Bildirimler()),
              );
            },
            alignment: Alignment.centerLeft,
          ), //Temsili Bildirimler İkonu
        ],
      ),

      backgroundColor: Colors.grey[100],
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(  //Ana Gövdenin ListViewı
          children: [
            SizedBox(
              height: 10,
            ), // AppBar ile Liste Şeklindeki Kategorileri Ayıran SizedBox
            Container(
              color: Colors.white,
              height: 50,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 0, left: 0),
                  child: TabBar(
                    controller: kontrolcu,
                    indicatorColor:Colors.orange[800],
                    isScrollable: true,
                    labelColor: Colors.orange[800],
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      CreateCat_TabList_OnTop(cat_name: "Kadın", isLast: false),
                      CreateCat_TabList_OnTop(cat_name: "Erkek", isLast: false),
                      CreateCat_TabList_OnTop(
                          cat_name: "Ev & Yaşam",isLast: false),
                      CreateCat_TabList_OnTop(cat_name: "Süpermarket",isLast: false),
                      CreateCat_TabList_OnTop(cat_name: "Çocuk",isLast: false),
                      CreateCat_TabList_OnTop(cat_name: "Kozmetik",isLast: false),
                      CreateCat_TabList_OnTop(cat_name: "Ayakkabı Çanta",isLast: false),
                      CreateCat_TabList_OnTop(cat_name: "Spor Giyim",isLast: false),
                      CreateCat_TabList_OnTop(cat_name: "Elektronik",isLast: false),
                      CreateCat_TabList_OnTop(cat_name: "Saat Aksesuar",isLast: false),
                    ],
                  ),
                ),
              ), //Liste Şeklindeki Tabların Oluşturulacağı Container
            SizedBox(
              height: 10,
            ),
            Container(
              height: 5150,
              child: TabBarView(
                controller: kontrolcu,
                children: [
                  Column(children: [ // Liste Şeklindeki Tablar ile İcon Şeklindeki Kategorileri Ayıran SizedBox
                   Container(
                      color: Colors.grey[200],
                      height: 100,
                      child: GestureDetector(
                          onTap: (){showAlertDialog();},
                          child: createFastCategories(true, false))), // İcon şeklindeki kaegorilerin olduğu
                   GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                   GestureDetector(
                       onTap: (){showAlertDialog();},
                       child: createScrollingPart(true, false)),
                   GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "o",color_value: Colors.green[200])),
                 ],
                 ), //Anasayfa Kadın
                  Column(children: [
                    GestureDetector(
                      onTap: (){showAlertDialog();},
                      child: Container(
                        color: Colors.grey[200],
                        height: 300,
                        child: createFastCategories(false, true),
                        ),
                      ),
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                      onTap: (){showAlertDialog();},
                      child: createScrollingPart(false,true),
                    ),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "g",color_value: Colors.green[200])),
                  ],
                  ), //Anasayfa Erkek
                  Column(children: [ // Liste Şeklindeki Tablar ile İcon Şeklindeki Kategorileri Ayıran SizedBox
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                        onTap: (){showAlertDialog();},
                        child: createScrollingPart(true, false)),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "OO",color_value: Colors.orange[300],)),
                  ],
                  ), //Anasayfa Ev & Yaşam
                  Column(children: [
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                      onTap: (){showAlertDialog();},
                      child: createScrollingPart(false,true),
                    ),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "OG",color_value: Colors.green[200])),

                  ],
                  ),
                  Column(children: [ // Liste Şeklindeki Tablar ile İcon Şeklindeki Kategorileri Ayıran SizedBox
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                        onTap: (){showAlertDialog();},
                        child: createScrollingPart(true, false)),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "OO",color_value:Colors.orange[300],)),
                  ],
                  ),
                  Column(children: [
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                      onTap: (){showAlertDialog();},
                      child: createScrollingPart(false,true),
                    ),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "OG",color_value: Colors.green[200],)),

                  ],
                  ),
                  Column(children: [ // Liste Şeklindeki Tablar ile İcon Şeklindeki Kategorileri Ayıran SizedBox
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                        onTap: (){showAlertDialog();},
                        child: createScrollingPart(true, false)),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "OO",color_value: Colors.orange[300])),
                  ],
                  ),
                  Column(children: [
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                      onTap: (){showAlertDialog();},
                      child: createScrollingPart(false,true),
                    ),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "OG",color_value: Colors.green[200],)),

                  ],
                  ),
                  Column(children: [ // Liste Şeklindeki Tablar ile İcon Şeklindeki Kategorileri Ayıran SizedBox
                    Container(
                        color: Colors.grey[200],
                        height: 100,
                        child: GestureDetector(
                            onTap: (){showAlertDialog();},
                            child: createFastCategories(true, false))), // İcon şeklindeki kaegorilerin olduğu
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                        onTap: (){showAlertDialog();},
                        child: createScrollingPart(true, false)),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "o",color_value: Colors.green[200])),
                  ],
                  ),
                  Column(children: [
                    GestureDetector(
                      onTap: (){showAlertDialog();},
                      child: Container(
                        color: Colors.grey[200],
                        height: 300,
                        child: createFastCategories(false, true),
                      ),
                    ),
                    GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerPage()));},
                        child: CreateScrollingVerticalParts(bcgr_url: "https://cdn.dsmcdn.com/ty23/campaign/banners/original/542313/88c6118b5f_0_new.jpg",color_value: Colors.orange)),
                    GestureDetector(
                      onTap: (){showAlertDialog();},
                      child: createScrollingPart(false,true),
                    ),
                    GestureDetector(
                        onTap: (){showinfoDialog();},
                        child: CreateScrollingVerticalParts(bcgr_url: "g",color_value: Colors.orange[800],)),

                  ],
                  ),
                ],
              ),
            ), // Yukardan Aşağı Anasayfa
          ],
        ),
      ),
    );
  }

  _handleTabSelection() {
    setState(() {
      _currentIndex = kontrolcu.index;
    });
  }

  Widget createFastCategories(bool isKadin, bool isErkek) {
    if(isKadin){
    List<Widget> list = new List<Widget>();
    for(var i = 0; i <9; i++) {
      if (i == 0) {
        list.add(Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: new CreateFastCat_Icon_OnTop(cat_name: kadinFastCatNames[i],
            url_address: kadinFastCatBcgrUrls[i],
            color_value: Colors.white,
            isLast: true,),
        ));
      }
      else {
        list.add(Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: new CreateFastCat_Icon_OnTop(cat_name: kadinFastCatNames[i],
            url_address: kadinFastCatBcgrUrls[i],
            color_value: Colors.white,
            isLast: true,),
        ));
      }
    }
    return new ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(top: 20, left: 10),
      children: list
    );
    }
    if(isErkek){
      List<Widget> list = new List<Widget>();
      for(var i = 0; i <16; i++){
        list.add(new CreateFastCat_Icon_OnTop(cat_name: erkekFastCatNames[i], url_address: erkekFastCatBcgrUrls[i],color_value: Colors.white,isLast: true,));
      }
      return new  GridView.count(
          crossAxisCount:4,
          padding: EdgeInsets.only(top: 20, left: 10),
    children: list
    );
    };



  }
  Widget createScrollingPart(bool isKadin, bool isErkek){
      if(isKadin) {
        List<Widget> list = new List<Widget>();
        for (var i = 0; i < 23; i++) {
          list.add(CreateScrollingVerticalParts(bcgr_url: kadinPartBcgrUrls[i],color_value:Colors.green,));
        }
          return Column(children: list,);
      }
      if(isErkek){
        List<Widget> list = new List<Widget>();
        for (var i = 0; i < 22; i++) {
          list.add(CreateScrollingVerticalParts(bcgr_url: erkekPartBcgrUrls[i],color_value:Colors.green,));
        }
        return Column(children: list,);
      }
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
  showinfoDialog(){
      return CoolAlert.show(
        context: context,
        title: "Trenyol Clone",
        confirmBtnColor: Colors.orange[800],
        animType: CoolAlertAnimType.scale,
        type: CoolAlertType.success,
        text: "Bu uygulama flutter önyüzünü öğrenmek, boş vakitleri değerlendirmek amacıyla Yahya Can Özdemir tarafından gelişirilmiştir",
      );
    }


}


