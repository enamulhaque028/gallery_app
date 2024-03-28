import 'package:flutter/material.dart';

import '../../../config/constants/app_color.dart';
import '../../album/domain/album.dart';
import '../domain/media.dart';
import '../domain/medium.dart';
import 'image_viewer_page.dart';
import 'widgets/image_list_tile.dart';

class ImageListPage extends StatefulWidget {
  const ImageListPage({
    super.key,
    required this.album,
  });
  final Album album;

  @override
  State<ImageListPage> createState() => _ImageListPageState();
}

class _ImageListPageState extends State<ImageListPage> {
  List<String> imagePaths = [];
  List<Medium> _media = [];

  Future<void> _getImagesFromAlbum() async {
    Media mediaPage = await widget.album.listMedia();
    mediaPage.items
        .map((medium) => medium.getFile().then((file) {
              imagePaths.add(file.path);
              _media = mediaPage.items;
              setState(() {});
            }))
        .toList();
  }

  @override
  void initState() {
    _getImagesFromAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kWhiteColor,
        title: Text(
          widget.album.name ?? "Unnamed Album",
          style: const TextStyle(
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
        itemCount: imagePaths.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return ImageListTile(
            mediaId: _media[index].id,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageViewerPage(
                    imagePath: imagePaths[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
