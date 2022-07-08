// import 'dart:async';

// import '../contollers/user_controller.dart';
// import '../services/auth/auth_service.dart';
// import "../apis/httpService.dart";
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import '../configuration/constants.dart';
// //import '../services/http/constants.dart';

// class LoginController extends GetxController {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   final http = new HttpService();
//   final passwordController = TextEditingController();
//   final emailController = TextEditingController();

//   @override
//   void onClose() {
//     emailController.dispose();
//     passwordController.dispose();
//     super.onClose();
//   }

//   String? passwordValidator(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'This field cannot be empty';
//     }
//     if (value.length < 4) {
//       return 'Password too short';
//     }
//     return null;
//   }

//   String? emailValidator(String? value) {
//     //email RegExp
//     final _emailRegExp = RegExp(
//         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

//     if (value == null || value.isEmpty) {
//       return 'This field cannot be empty';
//     }
//     if (value.length < 4) {
//       return 'Username too short';
//     }
//     return null;
//   }

//   Future<bool> login() async {
//     Map<String, dynamic> loginDetails = {
//       "password": passwordController.text,
//       "email": emailController.text,
//       "grant_type": "password"
//     };
//     var response = await http.login(loginDetails);
//     await AuthService.setToken(response.token);
//     await AuthService.setUniqueName(response.uniqueName);
//     await AuthService.setId(response.id);
//     // var userController = Get.find<UserController>();
//     // userController.authenticated = true;
//     return response.isValid;
//   }
// }
