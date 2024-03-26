import 'package:flutter/material.dart';
import 'package:gallery_app/src/common_widgets/custom_button.dart';
import 'package:gallery_app/src/config/gaps.dart';

import '../../../config/constants/app_color.dart';
import '../../../config/constants/image_assets.dart';
import 'album_list_page.dart';

class StoragePermissionPage extends StatelessWidget {
  const StoragePermissionPage({super.key});

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
                onTapBtn: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AlbumListPage(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
