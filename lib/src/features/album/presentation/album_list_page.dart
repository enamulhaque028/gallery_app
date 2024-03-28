import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../config/constants/app_color.dart';
import '../../photos/presentation/image_list_page.dart';
import '../data/photo_gallery_service.dart';
import '../domain/album.dart';
import 'widgets/album_list_tile.dart';

class AlbumListPage extends StatefulWidget {
  const AlbumListPage({super.key});

  @override
  State<AlbumListPage> createState() => _AlbumListPageState();
}

class _AlbumListPageState extends State<AlbumListPage> {
  List<Album> _albums = [];
  bool _loading = false;
  List<Uint8List> byte = [];

  @override
  void initState() {
    super.initState();
    _loading = true;
    initAsync();
  }

  Future<void> initAsync() async {
    List<Album> albums = await PhotoGalleryService.listAlbums();
    for (var i = 0; i < albums.length; i++) {
      var elements = await albums[i].getThumbnail(highQuality: true);
      byte.add(Uint8List.fromList(elements));
    }
    setState(() {
      _albums = albums;
      _loading = false;
    });
  }

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
      body: _loading
          ? const Center(
              child: CupertinoActivityIndicator(),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 6,
              ),
              itemCount: _albums.length,
              padding: const EdgeInsets.all(12),
              itemBuilder: (context, index) {
                var album = _albums[index];
                return AlbumListTile(
                  albumThumbnail: byte[index],
                  albumName: album.name ?? "Unnamed Album",
                  imageCount: album.count,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ImageListPage(),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
