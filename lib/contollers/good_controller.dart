import 'dart:async';
import 'package:get/get.dart';
import '../apis/httpService.dart';
import '../model/RestaurantAndFood.dart';
// import 'package:photoapp_mobile/model/Event.dart';

import '../services/auth/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class GoodsController extends GetxController {
  // ignore: deprecated_member_use
  HttpService apis = new HttpService();
  final Rx<List<Good>> _goods = Rx([]);
  final Rx<List<Restaurant>> _restuarant = Rx([]);

  @override
  onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    var results = await apis.userDash();

    setGoods(results.good);
    setRestaurants(results.restaurant);
    // print("hello one");
    // print(goods);
    super.onReady();
  }

  void setGoods(value) => _goods.value = value;

  void setRestaurants(value) => _restuarant.value = value;

  List<Restaurant> get restaurant {
    return _restuarant.value;
  }

  List<Good> get goods {
    return _goods.value;
  }
}
