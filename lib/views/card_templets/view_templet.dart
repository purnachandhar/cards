import 'package:card_poc/constains/constains.dart';
import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/views/save_the_date_templets/form/save_the_date_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ViewTemplet extends StatefulWidget {
  Widget myWidget;
  String image;
  String price;
  String categories;
  String templetId;
  List saveTheDateTempltes;
  int index;

  ViewTemplet(this.myWidget, this.image, this.price, this.categories,
      this.templetId, this.saveTheDateTempltes, this.index);

  @override
  _ViewTempletState createState() => _ViewTempletState();
}

class _ViewTempletState extends State<ViewTemplet> {
  void _showFilterBar(BuildContext ctx, String price) {
    showModalBottomSheet(
        elevation: 70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        backgroundColor: Colors.white,
        context: ctx,
        builder: (ctx) => StatefulBuilder(
              builder: (BuildContext context,
                  void Function(void Function()) setState) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("UNLOCK PREMIMUM CARD",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("Get your invitation card",style: TextStyle(fontSize: 16),),
                      SizedBox(height: 40,),
                      InkWell(
                        onTap: (){
                          if(price=='0'){
                            adMobController.showRewardedAd();
                            // saveTheDateController.takePicture();
                          }else {
                            paymentController.createOrder("${price}");
                            print("payment");

                            saveTheDateController.takePicture();
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              price== "0"?"WATCH AD": "Pay ${price} to Download Now",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                );
              },
            ));
  }

  String? cardprice;
  @override
  Widget build(BuildContext context) {
    final AdWidget adWidget = AdWidget(ad: adMobController.myNewBanner);
    final Container adContainer = Container(
      alignment: Alignment.center,
      child: adWidget,
    );
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: adContainer,
              width: width,
              height: 50,
            ),
            Expanded(
                child: PageView.builder(
              itemCount: widget.saveTheDateTempltes.length,
              scrollDirection: Axis.horizontal,
              controller: PageController(
                  initialPage: widget.index, keepPage: true, viewportFraction: 1),
              itemBuilder: (BuildContext context, int itemIndex) {
                cardprice = widget.saveTheDateTempltes[itemIndex]['price'];
                return widget.saveTheDateTempltes[itemIndex]['templetWidget'];
              },
            )),
            Container(
              width: width,
              height: 100,
              color: primaryAccenttextColor.withOpacity(0.2),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.translate,
                      color: primaryColor,
                    ),
                    Icon(
                      Icons.share,
                      color: primaryColor,
                    ),
                    InkWell(
                      onTap: () {
                        adMobController.showInterstitialAd();
                        Get.to(SaveTheDateForm());
                      },
                      child:
                          saveTheDateController.userdata.read('brideName') == null
                              ? Container()
                              : Container(
                                  height: 50,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Edit",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                    ),
                    InkWell(
                      onTap: () {
                        // saveTheDateController.takePicture();
                        if (saveTheDateController.userdata.read('brideName') ==
                            null) {
                          Get.to(SaveTheDateForm());
                        } else {
                          _showFilterBar(context,cardprice!);
                          // paymentController.createOrder("${widget.price}");
                          // print("payment");
                          //
                          // saveTheDateController.takePicture();

                        }
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            saveTheDateController.userdata.read('brideName') ==
                                    null
                                ? "Try this Card for free"
                                : "Download the Card",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
        // floatingActionButton: Padding(
        //   padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        //   child: Container(
        //     width: width,
        //     height: 80,
        //     color: Colors.blue,
        //   ),
        // )
        /* Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  if (saveTheDateController.userdata.read('brideName') == null) {
                    Get.to(SaveTheDateForm());
                  } else {
                    paymentController.createOrder("${widget.price}");
                    print("payment");

                    saveTheDateController.takePicture();
                  }
                },
                child: Container(
                  width: width / 2,
                  height: height / 14,
                  color: Colors.brown,
                  child: Center(
                    child: Text(
                      saveTheDateController.userdata.read('brideName') == null
                          ? "Use Templet"
                          : "Pay ${widget.price} & Download",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          )*/
      ),
    );
  }
}
