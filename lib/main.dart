import 'package:copos/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: bgColor, textTheme: GoogleFonts.poppinsTextTheme(Get.textTheme).apply(bodyColor: Colors.white),
      canvasColor: secondaryColor),
      
    ),
  );
}
