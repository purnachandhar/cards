import 'dart:convert';
import 'dart:io';

import 'package:card_poc/constains/constains.dart';
import 'package:card_poc/constains/controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:http/http.dart' as http;
class PaymentController extends GetxController{
  static PaymentController instance = Get.find();

  final razorpay = Razorpay();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
      razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
      razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    });
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
    print("Responce is: $response");

    print("payment Id :${response.paymentId}");
    print("payment Id :${response.signature}");
    print("payment Id :${response.orderId}");

    GallerySaver.saveImage(saveTheDateController.imgFile!.path).then((value) {
      Get.snackbar("Save", "Sucessfully Saved");
    });

  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print(response);
    // Do something when payment fails

  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print(response);
    // Do something when an external wallet is selected

  }

  // create order
  void createOrder(String amount) async {
    String username = paymentKeyId;
    String password = paymentKeySecret;
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('$username:$password'))}';


    Map<String, dynamic> body = {
      "amount": num.parse(amount)*100,
      "currency": "INR",
      "receipt": "rcptid_11"
    };
    var res = await http.post(
      Uri.https(
          "api.razorpay.com", "v1/orders"), //https://api.razorpay.com/v1/orders
      headers: <String, String>{
        "Content-Type": "application/json",
        'authorization': basicAuth,
      },
      body: jsonEncode(body),
    );

    if (res.statusCode == 200) {
      openGateway(jsonDecode(res.body)['id'], amount);
    }
    print(res.body);
  }

  openGateway(String orderId, String amount) {
    var options = {
      'key': paymentKeyId,
      'amount': num.parse(amount)*100, //in the smallest currency sub-unit.
      'name': 'Acme Corp.',
      'order_id': orderId, // Generate order_id using Orders API
      'description': 'Fine T-Shirt',
      'timeout': 60 * 5, // in seconds // 5 minutes
      'prefill': {
        'contact': '9866452225',
        'email': 'test@gmail.com',
      }
    };
    razorpay.open(options);
  }

  verifySignature({
    String? signature,
    String? paymentId,
    String? orderId,
  }) async{
   Map<String, dynamic> body = {
       "razorpay_payment_id": paymentId,
       "razorpay_order_id": orderId,
       "razorpay_signature": signature
   };
   
   var parts = [];
   
   body.forEach((key, value) { 
     parts.add('${Uri.encodeQueryComponent(key)}='
                '${Uri.encodeQueryComponent(value)}'
     );
     var fromData = parts.join('&');

     print(fromData);

   });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }
}
