import 'package:flutter/material.dart';

import '../../../config/constants/app_color.dart';
import '../data/photo_gallery_service.dart';
import 'widgets/album_list_tile.dart';

class AlbumListPage extends StatelessWidget {
  const AlbumListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.kWhiteColor,
        title: const Text(
          "Albums",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: AppColor.kTextTitleColor,
          ),
        ),
        centerTitle: false,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 6,
        ),
        itemCount: 20,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return AlbumListTile(
            onTap: () {
              PhotoGalleryService.listAlbums();
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const ImageListPage(),
              //   ),
              // );
            },
          );
        },
      ),
    );
  }
}
