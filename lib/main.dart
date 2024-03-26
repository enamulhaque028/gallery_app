import 'package:flutter/material.dart';
import 'package:gallery_app/src/config/constants/app_color.dart';

import 'src/config/constants/font_assets.dart';
import 'src/features/album/presentation/storage_permission_page.dart';

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
      home: const StoragePermissionPage(),
    );
  }
}
