import 'package:card_poc/constains/constains.dart';
import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/views/card_templets/view_templet.dart';
import 'package:card_poc/views/cards/cards_category/card_categorys.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_one.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_three.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_two.dart';
import 'package:facebook_audience_network/ad/ad_banner.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

import '../save_the_date_templets/save_the_date_four.dart';

class CardsHomePage extends StatefulWidget {
  @override
  State<CardsHomePage> createState() => _CardsHomePageState();
}

class _CardsHomePageState extends State<CardsHomePage> {
  // var templetsController.saveTheDateTempltes = [
  //   {
  //     "image":
  //         "https://i.pinimg.com/736x/cc/f5/7f/ccf57f70756dd84d84f6db7d44330e63.jpg",
  //     "templetWidget": SaveTheDateOne(),
  //     "date": "01 July 2002",
  //     "templetId": "saveTheCard000001",
  //     "categories": "savethedate",
  //     "priceType": "free",
  //     "price": "0",
  //   },
  //   {
  //     "image":
  //         "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm171-sasi-22_1-kuglgviv.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=7a299b37c1278fe42aca586764cfb88b",
  //     "templetWidget": SaveTheDateTwo(),
  //     "date": "01 July 2002",
  //     "templetId": "saveTheCard000002",
  //     "categories": "savethedate",
  //     "priceType": "pay",
  //     "price": "200",
  //   },
  //   {
  //     "image":
  //         "https://img.lovepik.com/background/20211029/medium/lovepik-green-ribbon-invitation-literary-floral-background-image_605822078.jpg",
  //     "templetWidget": SaveTheDateThree(),
  //     "date": "01 July 2002",
  //     "templetId": "saveTheCard000003",
  //     "categories": "savethedate",
  //     "priceType": "free",
  //     "price": "120",
  //   },
  //   {
  //     "image":
  //         "https://i.pinimg.com/originals/80/eb/79/80eb797560f2f4d392fdec13a5c59820.png",
  //     "templetWidget": SaveTheDateFour(),
  //     "date": "01 July 2002",
  //     "templetId": "saveTheCard000004",
  //     "categories": "savethedate",
  //     "priceType": "free",
  //     "price": "200",
  //   },
  // ];

  var eventsList = [
    {
      "name": "Wedding Card",
      "image":
          "https://as1.ftcdn.net/v2/jpg/01/19/77/04/1000_F_119770404_zzo8O48OzHbcIIMKyqP7fXYjVodGG8o6.jpg"
    },
    {
      "name": 'Engagement Cards',
      "image":
          "https://img.freepik.com/premium-vector/gold-wedding-rings-vector-isolated-white-background-cartoon-style-symbol-marriage-engagement_508884-52.jpg?w=826"
    },
    {
      "name": 'Reception Ceremony',
      "image":
          "https://us.123rf.com/450wm/yupiramos/yupiramos1807/yupiramos180705156/114994852-bride-and-groom-cutting-wedding-cake-wreath-flowers-vector-illustration.jpg?ver=6"
    },
    {
      "name": 'Save the Date Cards',
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRym6AcejzaT-VVxvlOryV8JrvTLJEIC4k2gg&usqp=CAU"
    },
    {
      "name": 'Mehndi Cards',
      "image":
          "https://as2.ftcdn.net/v2/jpg/00/69/53/69/1000_F_69536910_a07TLtZB0XthhMPo7M1E78Er4jPArC8H.jpg"
    },
    {
      "name": 'Haldi Cards',
      "image":
          "https://img.freepik.com/premium-vector/cute-indian-couple-yellow-traditional-dress-haldi-ceremony-their-wedding-day_21630-837.jpg?w=740"
    },
    {
      "name": 'Sangeet Ceremony',
      "image":
          "https://img.freepik.com/premium-vector/cute-indian-couple-dancing-traditional-dress-cartoon_21630-951.jpg?w=740"
    },
    {
      "name": 'Cooktail Party',
      "image":
          "https://thumbs.dreamstime.com/z/cocktail-party-invitation-cocktail-party-invitation-concept-template-hands-friends-alcohol-drinks-making-toast-vector-101171903.jpg"
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FacebookAudienceNetwork.init(
      testingId: "a77955ee-3304-4635-be65-81029b0f5201",
    );
    //showBannerAd();

  }

  Widget currentAd = SizedBox(
    width: 110.0,
    height: 110.0,
  );
/*
  showBannerAd() {
    setState(() {
      currentAd = FacebookBannerAd(
        // placementId: "YOUR_PLACEMENT_ID",
        placementId:
        "IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID", //testid
        bannerSize: BannerSize.STANDARD,
        listener: (result, value) {
          print("Banner Ad: $result -->  $value");
        },
      );
    });
  }
*/

  @override
  Widget build(BuildContext context) {
    final AdWidget adWidget = AdWidget(ad: adMobController.myBanner);
    final Container adContainer = Container(
      alignment: Alignment.center,
      child: adWidget,
    );
    final orientation = MediaQuery.of(context).orientation;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Container(
            width: size.width,
            height: size.height / 5.5,
            //color: Colors.yellow,
            child: ListView.builder(
              itemCount: eventsList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    switch("${eventsList[i]['name']}"){
                      case "Wedding Card":
                        print("Wedding Card");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCategorys(templetsController.weddingCadsTemplets,"${eventsList[i]['name']}")
                          ),
                        );
                        break;
                      case "Engagement Cards":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCategorys(templetsController.weddingCadsTemplets,"${eventsList[i]['name']}")
                          ),
                        );
                        break;
                      case "Reception Ceremony":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCategorys(templetsController.weddingCadsTemplets,"${eventsList[i]['name']}")
                          ),
                        );
                        break;
                      case "Save the Date Cards":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCategorys(templetsController.weddingCadsTemplets,"${eventsList[i]['name']}")
                          ),
                        );
                        break;
                      case "Mehndi Cards":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCategorys(templetsController.weddingCadsTemplets,"${eventsList[i]['name']}")
                          ),
                        );
                        break;
                      case "Haldi Cards":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCategorys(templetsController.weddingCadsTemplets,"${eventsList[i]['name']}")
                          ),
                        );
                        break;
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: size.width / 4.3,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  NetworkImage("${eventsList[i]['image']}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "${eventsList[i]['name']}",
                                textAlign: TextAlign.center,
                                style: myFonts,
                              ),
                            ),
                          ],
                        )),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wedding Card",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CardCategorys(templetsController.weddingCadsTemplets, "Wedding Card")
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "See All",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: primaryColor),
                      ),
                      Icon(Icons.arrow_forward, color: primaryColor)
                    ],
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount:  templetsController.saveTheDateTempltes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (0.62), crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewTemplet(
                                templetsController.saveTheDateTempltes[index]['templetWidget']
                                    as Widget,
                                templetsController.saveTheDateTempltes[index]['image'] as String,
                                templetsController.saveTheDateTempltes[index]['price'] as String,
                                templetsController.saveTheDateTempltes[index]['categories']
                                    as String,
                                templetsController.saveTheDateTempltes[index]['templetId']
                                    as String,
                                templetsController.saveTheDateTempltes,
                                index as int)),
                      );
                      print("${templetsController.saveTheDateTempltes[index]['categories']}");
                    },
                    child: Image.network(
                      "${templetsController.saveTheDateTempltes[index]['image']}",
                      height: 280,
                      fit: BoxFit.fill,
                      // width: 150,
                    ),
                  ),
                ),
              );
            },
          ),
          Container(
            child: adContainer,
            width: size.width,
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Engagement Cards",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      "See All",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    Icon(Icons.arrow_forward, color: primaryColor)
                  ],
                ),
              ],
            ),
          ),
          GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: templetsController.saveTheDateTempltes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (0.62), crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => ViewTemplet(
                  //         templetsController.saveTheDateTempltes[index]
                  //         ['templetWidget'] as Widget,
                  //         templetsController.saveTheDateTempltes[index]['image']
                  //         as String,
                  //         templetsController.saveTheDateTempltes[index]['price']
                  //         as String,
                  //         templetsController.saveTheDateTempltes[index]
                  //         ['categories'] as String,
                  //         templetsController.saveTheDateTempltes[index]
                  //         ['templetId'] as String,
                  //       )),
                  // );
                  print("${templetsController.saveTheDateTempltes[index]['categories']}");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Image.network(
                      "${templetsController.saveTheDateTempltes[index]['image']}",
                      height: 280,
                      fit: BoxFit.fill,
                      // width: 150,
                    ),
                  ),
                ),
              );
            },
          ),
          Container(
            child: currentAd,
            width: size.width,
            height: 50,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reception Ceremony",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      "See All",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    Icon(Icons.arrow_forward, color: primaryColor)
                  ],
                ),
              ],
            ),
          ),
          GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: templetsController.saveTheDateTempltes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (0.62), crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 3,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ViewTemplet(
                        //         templetsController.saveTheDateTempltes[index]
                        //         ['templetWidget'] as Widget,
                        //         templetsController.saveTheDateTempltes[index]['image']
                        //         as String,
                        //         templetsController.saveTheDateTempltes[index]['price']
                        //         as String,
                        //         templetsController.saveTheDateTempltes[index]
                        //         ['categories'] as String,
                        //         templetsController.saveTheDateTempltes[index]
                        //         ['templetId'] as String,
                        //       )),
                        // );
                        print("${templetsController.saveTheDateTempltes[index]['categories']}");
                      },
                      child: Image.network(
                        "${templetsController.saveTheDateTempltes[index]['image']}",
                        height: 280,
                        fit: BoxFit.fill,
                        // width: 150,
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    //       child: Text(
                    //         "₹${templetsController.saveTheDateTempltes[index]['price']}",
                    //         style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    //       child: Icon(Icons.favorite),
                    //     )
                    //     // Text("data"),
                    //   ],
                    // )
                  ],
                ),
              );
            },
          ),
          Container(
            width: size.width,
            height: 50,
            child: UnityBannerAd(
              placementId: "my_unity_ad",
              onLoad: (placementId) => print('Banner loaded: $placementId'),
              onClick: (placementId) => print('Banner clicked: $placementId'),
              onFailed: (placementId, error, message) =>
                  print('Banner Ad $placementId failed: $error $message'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Save the Date Cards",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      "See All",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    Icon(Icons.arrow_forward, color: primaryColor)
                  ],
                ),
              ],
            ),
          ),
          GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: templetsController.saveTheDateTempltes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (0.62), crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 3,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ViewTemplet(
                        //         templetsController.saveTheDateTempltes[index]
                        //         ['templetWidget'] as Widget,
                        //         templetsController.saveTheDateTempltes[index]['image']
                        //         as String,
                        //         templetsController.saveTheDateTempltes[index]['price']
                        //         as String,
                        //         templetsController.saveTheDateTempltes[index]
                        //         ['categories'] as String,
                        //         templetsController.saveTheDateTempltes[index]
                        //         ['templetId'] as String,
                        //       )),
                        // );
                        print("${templetsController.saveTheDateTempltes[index]['categories']}");
                      },
                      child: Image.network(
                        "${templetsController.saveTheDateTempltes[index]['image']}",
                        height: 280,
                        fit: BoxFit.fill,
                        // width: 150,
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    //       child: Text(
                    //         "₹${templetsController.saveTheDateTempltes[index]['price']}",
                    //         style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    //       child: Icon(Icons.favorite),
                    //     )
                    //     // Text("data"),
                    //   ],
                    // )
                  ],
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
