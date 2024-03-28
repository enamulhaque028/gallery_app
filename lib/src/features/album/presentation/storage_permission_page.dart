import 'package:flutter/material.dart';
import 'package:gallery_app/src/common_widgets/custom_button.dart';
import 'package:gallery_app/src/config/gaps.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../config/constants/app_color.dart';
import '../../../config/constants/image_assets.dart';
import 'album_list_page.dart';

class StoragePermissionPage extends StatefulWidget {
  const StoragePermissionPage({super.key});

  @override
  State<StoragePermissionPage> createState() => _StoragePermissionPageState();
}

class _StoragePermissionPageState extends State<StoragePermissionPage> {
  Future<bool> _promptPermissionSetting() async {
    if (await Permission.storage.request().isGranted ||
        await Permission.photos.request().isGranted) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    checkIfPermissionGranted();
    super.initState();
  }

  Future<void> checkIfPermissionGranted() async {
    if (await Permission.storage.isGranted ||
        await Permission.photos.isGranted) {
      navigateToAlbums(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageAssets.imgLogo,
                width: 123,
                height: 149,
              ),
              42.vGap,
              const Text(
                "Require Permission",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColor.kPrimaryTextColor,
                ),
              ),
              8.vGap,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 53),
                child: Text(
                  "To show your black and white photos we just need your folder permission. We promise, we don’t take your photos.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.kSecondaryTextColor,
                    height: 16 / 14,
                  ),
                ),
              ),
              42.vGap,
              CustomTextButton(
                title: "Grant Access",
                onTapBtn: () async {
                  bool hasPermissionGranted = await _promptPermissionSetting();
                  navigateToAlbums(hasPermissionGranted);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToAlbums(bool hasPermissionGranted) {
    if (hasPermissionGranted) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const AlbumListPage(),
        ),
        (Route<dynamic> route) => false,
      );
    }
  }
}
