// import 'dart:async';
// import 'package:get/get.dart';
// import 'package:newdoc_app/model/Good.dart';
// import 'package:newdoc_app/apis/httpService.dart';
// // import 'package:photoapp_mobile/model/Event.dart';

// import '../services/auth/auth_service.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/material.dart';

// class CartController extends GetxController {
//   // ignore: deprecated_member_use
//   HttpService apis = new HttpService();
//   // final Rx<List<Event>> _events = Rx([]);
//   final Rx<List<Good>> _photos = Rx([]);
//   final Rx<List<Good>> _searchImage = Rx([]);
//   List<Good> cartItems = List<Good>.empty().obs;

//   var totalAmount = 0.obs;

//   // List<Event> get events {
//   //   return _events.value;
//   // }

//   List<Good> get photos {
//     return _photos.value;
//   }

//   List<Good> get searchImages {
//     return _searchImage.value;
//   }

//   setphotos(value) => _photos.value = value;
  
//   void clearsearchImages() async {
//     _searchImage.value.clear();
//   }

 
//   addImage(Good image) {
//     print("about to add to cart");
//     if (!cartItems.contains(image)) {
//       cartItems.add(image);
//       print(cartItems);
//     }
//   }

//   removeImage(Good image) {
//     print("remove from item");
//     if (cartItems.contains(image)) {
//       cartItems.remove(image);
//       getAmount();
//     }
//   }

//   get total {
//     var sum = 0;
//     for (var i = 0; i < cartItems.length; i++) {
//       sum += cartItems[i].price;
//     }
//     return sum;
//   }

//   getAmount() {
//     for (var i = 0; i < cartItems.length; i++) {
//       totalAmount.value += cartItems[i].price;
//     }
//     return totalAmount;
//   }
// }
