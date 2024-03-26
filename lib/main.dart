import 'package:flutter/material.dart';
import 'package:gallery_app/src/config/constants/app_color.dart';

import 'src/config/constants/font_assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.kPrimaryColor),
        useMaterial3: true,
        fontFamily: FontAssets.fontFamilyRoboto,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
      ),
      body: const Center(
        child: Text("Photo Gallery"),
      ),
    );
  }
}
