import 'package:flutter/material.dart';

import '../../../config/constants/app_color.dart';
import 'image_viewer_page.dart';
import 'widgets/image_list_tile.dart';

class ImageListPage extends StatelessWidget {
  const ImageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kWhiteColor,
        title: const Text(
          "Recent",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: 40,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return ImageListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImageViewerPage(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
