import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/views/save_the_date_templets/form/save_the_date_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewTemplet extends StatefulWidget {
  Widget myWidget;
  String image;
  String price;
  String categories;
  String templetId;
  ViewTemplet(this.myWidget,this.image,this.price,this.categories,this.templetId );

  @override
  _ViewTempletState createState() => _ViewTempletState();
}

class _ViewTempletState extends State<ViewTemplet> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: widget.myWidget,
        floatingActionButton: Row(
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
                    saveTheDateController.userdata.read('brideName') == null ?"Use Templet":"Pay ${widget.price} & Download",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
