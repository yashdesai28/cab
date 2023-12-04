import 'package:cabcom/app/modules/cabhome/views/cabhome_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      navigatorKey: navigatorkey,
      routes: {
        '/':((context)=>const CabhomeView()),
        '/push-page':((context)=>const CabhomeView()),
      },
    ),
  );
}
