// import 'dart:async';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:photoapp_mobile/apis/httpService.dart';
// import 'package:photoapp_mobile/model/Event.dart';
// import 'package:photoapp_mobile/model/Photo.dart';
// import '../services/auth/auth_service.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class UserController extends GetxController {
//   TextEditingController Searchcontroller = new TextEditingController();
//   final Rx<List<Photo>> _photos = Rx([]);

//   final Rx<List<Photo>> _searchImage = Rx([]);
//   final _id = (-1).obs;
//   final _username = "".obs;
//   final _email = "".obs;
//   var _authenticated = false;
//   final Rx<List<Event>> _events = Rx([]);
//   bool get authenticated => _authenticated;
//   HttpService apis = new HttpService();

//   get username => _username.value;
//   set username(value) => _username.value = value;

//   set email(value) => _email.value = value;
//   get id => _id.value;
//   set id(value) => _id.value = value;
//   set authenticated(value) {
//     _authenticated = value;
//     //Get user data once authentication is set to true.
//     if (value) {}
//   }

//   String get email => _email.value;

//   List<Photo> get photos {
//     return _photos.value;
//   }

//   List<Event> get events {
//     return _events.value;
//   }

//   List<Photo> get searchImages {
//     return _searchImage.value;
//   }
//   // List<Event> get i {
//   //   return _events.value;
//   // }

//   void setphotos(value) => _photos.value = value;
//   void setevent(value) => _events.value = value;
//   void setFoundphotos(value) => _searchImage.value = value;

//   @override
//   onInit() async {
//     await AuthService.getToken().then((token) {
//       if (token.isNotEmpty) {
//         authenticated = true;
//         // appSingleton.connection.headers = {"Authorization": "Bearer $token"};
//       }
//       super.onInit();
//     });

//     String clientId = await AuthService.getUserId();
//     var userdata = await apis.userDash(clientId);

//     setphotos(userdata);
//     var apievent = await apis.getEvent("eventName");
//     setevent(apievent);
//   }

//   Future<void> logout() async {
//     await AuthService.removeToken();
//     authenticated = false;
//   }

//   void clearsearchImages() async {
//     _searchImage.value.clear();
//   }

//   Future<void> searchimages(String eventName) async {
//     clearsearchImages();
//     String clientUniqueName = await AuthService.getUniqueName();
//     var data = await apis.SearchEventImages(eventName, clientUniqueName);
//     setFoundphotos(data);
//   }
// }
