import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart';
import '../model/RestaurantAndFood.dart';
import '../model/LoginResponse.dart';
import '../model/Good.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpService {
  static const BASE_URL = "http://localhost:8082";
  static const loginApi = BASE_URL + '/client/login';
  static const goodsAndRestaurant =
      BASE_URL + '/client/getAllFoodAndRestaurants';
  static const eventsApi = BASE_URL + '/client/events';
  static const searchEndpoint = BASE_URL + '/client/searchEventImages';

  Future<dynamic> login(Map<String, dynamic> resquestData) async {
    var res = await post(Uri.parse(loginApi), body: resquestData);
    var body = await jsonDecode(res.body);

    LoginResponseObject user = LoginResponseObject.fromJson(body);
    return user;
  }

  Future<Welcome> userDash() async {
    var res = await get(Uri.parse(goodsAndRestaurant));
    var body = await jsonDecode(res.body);
    return  Welcome.fromJson(body);
  }

  // Future<List<Event>> getEvent(String eventName) async {
  //   var res = await post(Uri.parse(eventsApi), body: {"eventName": eventName});
  //   List<dynamic> body = jsonDecode(res.body);
  //   List<Event> events = body
  //       .map(
  //         (dynamic item) => Event.fromMap(item),
  //       )
  //       .toList();
  //   return events;
  // }

  // // Future<List<Photo>> SearchEventImages(
  // //     String eventName, String uniqueName) async {
  // //   var res = await post(Uri.parse(searchEndpoint),
  // //       body: {"uiqueName": uniqueName, "eventName": eventName});
  // //   List<dynamic> body = jsonDecode(res.body);
  // //   List<Photo> events = body
  // //       .map(
  // //         (dynamic item) => Photo.fromMap2(item),
  // //       )
  // //       .toList();
  // //   return events;
  // // }
}
