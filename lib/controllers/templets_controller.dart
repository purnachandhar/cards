import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets02.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets03.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets04.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets05.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets06.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets07.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets08.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets09.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets10.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets11.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/WeddingCadsTemplets12.dart';
import 'package:card_poc/views/All%20Cards%20Templtes/Wedding%20Cads%20Templets/weddingCadsTemplets01.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_four.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_one.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_three.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/save_the_date_templets/save_the_date_two.dart';

class TempletsController extends GetxController{
  static TempletsController instance = Get.find();

  var saveTheDateTempltes = [
    {
      "image":
      "https://i.pinimg.com/736x/cc/f5/7f/ccf57f70756dd84d84f6db7d44330e63.jpg",
      "templetWidget": SaveTheDateOne(),
      "date": "01 July 2002",
      "templetId": "saveTheCard000001",
      "categories": "savethedate",
      "priceType": "free",
      "price": "0",
    },
    {
      "image":
      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm171-sasi-22_1-kuglgviv.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=7a299b37c1278fe42aca586764cfb88b",
      "templetWidget": SaveTheDateTwo(),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "image":
      "https://img.lovepik.com/background/20211029/medium/lovepik-green-ribbon-invitation-literary-floral-background-image_605822078.jpg",
      "templetWidget": SaveTheDateThree(),
      "date": "01 July 2002",
      "templetId": "saveTheCard000003",
      "categories": "savethedate",
      "priceType": "free",
      "price": "120",
    },
    {
      "image":
      "https://i.pinimg.com/originals/80/eb/79/80eb797560f2f4d392fdec13a5c59820.png",
      "templetWidget": SaveTheDateFour(),
      "date": "01 July 2002",
      "templetId": "saveTheCard000004",
      "categories": "savethedate",
      "priceType": "free",
      "price": "200",
    },
  ];

  var weddingCadsTemplets = [
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F13.webp?alt=media&token=9ac623ab-e8c5-4a0d-b584-e01916369c5c",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F13.webp?alt=media&token=9ac623ab-e8c5-4a0d-b584-e01916369c5c",
      "templetWidget": WeddingCadsTemplets01("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F13.webp?alt=media&token=9ac623ab-e8c5-4a0d-b584-e01916369c5c",),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fwith%20text%20templets%2F02.jpg?alt=media&token=b007f2f8-2d28-47c8-9ec4-c2f1123d3b76",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F02.jpg?alt=media&token=535eaa47-4627-438a-8552-3b6d64e4a61f",
      "templetWidget": WeddingCadsTemplets11("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F02.jpg?alt=media&token=535eaa47-4627-438a-8552-3b6d64e4a61f",),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F14.jpg?alt=media&token=7bff6cf1-6db0-4ef8-bf92-3efa90035017",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F14.jpg?alt=media&token=7bff6cf1-6db0-4ef8-bf92-3efa90035017",
      "templetWidget": WeddingCadsTemplets02("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F14.jpg?alt=media&token=7bff6cf1-6db0-4ef8-bf92-3efa90035017",),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F15.jpg?alt=media&token=f19ea751-5204-4328-86db-b9ab3a22c986",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F15.jpg?alt=media&token=f19ea751-5204-4328-86db-b9ab3a22c986",
      "templetWidget": WeddingCadsTemplets03("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F15.jpg?alt=media&token=f19ea751-5204-4328-86db-b9ab3a22c986"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F16.webp?alt=media&token=e1000573-22cf-42ab-9f24-dea6287d1b5e",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F16.webp?alt=media&token=e1000573-22cf-42ab-9f24-dea6287d1b5e",
      "templetWidget": WeddingCadsTemplets04("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F16.webp?alt=media&token=e1000573-22cf-42ab-9f24-dea6287d1b5e"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F17.png?alt=media&token=758f7bbd-2acf-48c6-860a-9d80a32fddf6",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F17.png?alt=media&token=758f7bbd-2acf-48c6-860a-9d80a32fddf6",
      "templetWidget": WeddingCadsTemplets05("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F17.png?alt=media&token=758f7bbd-2acf-48c6-860a-9d80a32fddf6"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F19.jpg?alt=media&token=c1731a1c-533f-4392-a797-c8f39bea293c",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F19.jpg?alt=media&token=c1731a1c-533f-4392-a797-c8f39bea293c",
      "templetWidget": WeddingCadsTemplets06("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F19.jpg?alt=media&token=c1731a1c-533f-4392-a797-c8f39bea293c"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F20.jpg?alt=media&token=08d84948-ed6a-4f67-b54f-a957d163fe17",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F20.jpg?alt=media&token=08d84948-ed6a-4f67-b54f-a957d163fe17",
      "templetWidget": WeddingCadsTemplets07("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F20.jpg?alt=media&token=08d84948-ed6a-4f67-b54f-a957d163fe17"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F21.jpg?alt=media&token=4ee5f4cd-6e68-4d6a-abf7-8d03bd907ad1",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F20.jpg?alt=media&token=08d84948-ed6a-4f67-b54f-a957d163fe17",
      "templetWidget": WeddingCadsTemplets08("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F20.jpg?alt=media&token=08d84948-ed6a-4f67-b54f-a957d163fe17"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F22.jpg?alt=media&token=3acd9d4b-5831-4fa5-b1e4-f45f63da9b73",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F22.jpg?alt=media&token=3acd9d4b-5831-4fa5-b1e4-f45f63da9b73",
      "templetWidget": WeddingCadsTemplets09("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F22.jpg?alt=media&token=3acd9d4b-5831-4fa5-b1e4-f45f63da9b73"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F23.jpg?alt=media&token=38af2c6f-af59-4c6e-b86a-b2973414cc1c",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F23.jpg?alt=media&token=38af2c6f-af59-4c6e-b86a-b2973414cc1c",
      "templetWidget": WeddingCadsTemplets10("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F23.jpg?alt=media&token=38af2c6f-af59-4c6e-b86a-b2973414cc1c"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fwith%20text%20templets%2F04.jpg?alt=media&token=78d526d7-3559-4076-aeba-24dc6f916857",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F04.jpg?alt=media&token=751ebcf1-4778-459d-ada9-c03f2be9ab94",
      "templetWidget": WeddingCadsTemplets12("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F04.jpg?alt=media&token=751ebcf1-4778-459d-ada9-c03f2be9ab94"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fwith%20text%20templets%2F05.jpg?alt=media&token=c3fd8b76-ea8e-4b5f-ac46-6358cfd57e18",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F05.jpg?alt=media&token=21eba369-0c72-4275-b588-8a541ee9299e",
      "templetWidget": WeddingCadsTemplets10("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2F05.jpg?alt=media&token=21eba369-0c72-4275-b588-8a541ee9299e"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194420013.jpg?alt=media&token=6298306b-1cfe-4355-87b9-6803b4a14e45",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194420013.jpg?alt=media&token=6298306b-1cfe-4355-87b9-6803b4a14e45",
      "templetWidget": WeddingCadsTemplets10("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194420013.jpg?alt=media&token=6298306b-1cfe-4355-87b9-6803b4a14e45"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194557253.jpg?alt=media&token=67659a3b-d702-4327-9273-4da04e4df790",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194557253.jpg?alt=media&token=67659a3b-d702-4327-9273-4da04e4df790",
      "templetWidget": WeddingCadsTemplets10("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194557253.jpg?alt=media&token=67659a3b-d702-4327-9273-4da04e4df790"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194668669.jpg?alt=media&token=f4d384dc-2f38-4b9c-ab22-63f0213d9927",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194668669.jpg?alt=media&token=f4d384dc-2f38-4b9c-ab22-63f0213d9927",
      "templetWidget": WeddingCadsTemplets10("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194668669.jpg?alt=media&token=f4d384dc-2f38-4b9c-ab22-63f0213d9927"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194706302.jpg?alt=media&token=3aafabd9-85a6-4b8e-8331-ac6ce7a4f708",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194706302.jpg?alt=media&token=3aafabd9-85a6-4b8e-8331-ac6ce7a4f708",
      "templetWidget": WeddingCadsTemplets10("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194706302.jpg?alt=media&token=3aafabd9-85a6-4b8e-8331-ac6ce7a4f708"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },
    {
      "sampleImage" :"https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194734430.jpg?alt=media&token=a89a96ea-b9b2-4cba-a382-064b46f1d26d",
      "editImage": "https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194734430.jpg?alt=media&token=a89a96ea-b9b2-4cba-a382-064b46f1d26d",
      "templetWidget": WeddingCadsTemplets10("https://firebasestorage.googleapis.com/v0/b/invity-cards.appspot.com/o/wedding%20cards%20templets%2Fsnapedit_1664194734430.jpg?alt=media&token=a89a96ea-b9b2-4cba-a382-064b46f1d26d"),
      "date": "01 July 2002",
      "templetId": "saveTheCard000002",
      "categories": "savethedate",
      "priceType": "pay",
      "price": "200",
    },

  ];
}