// import '../../login/login_screen.dart';
// import '../network/local/cache_helper.dart';
// import 'package:flutter/material.dart';
//
//
// void SignOut(context){
//
//   CacheHelper.removeData(key: 'token').then((value) {
//     if (value) {
//       Navigator.pushReplacementNamed(context, LoginScreen.RouteName);
//     }
//   });
// }
import '../network/local/cache_helper.dart';

 String? token = CacheHelper.getData(key: 'token');
