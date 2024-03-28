import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/constants/app_color.dart';
import '../../photos/presentation/image_list_page.dart';
import '../../shared/bloc/photo_gallery_bloc.dart';
import 'widgets/album_list_tile.dart';

class AlbumListPage extends StatefulWidget {
  const AlbumListPage({super.key});

  @override
  State<AlbumListPage> createState() => _AlbumListPageState();
}

class _AlbumListPageState extends State<AlbumListPage> {
  @override
  void initState() {
    getAlbums();
    super.initState();
  }

  void getAlbums() {
    context.read<PhotoGalleryBloc>().add(const GetAlbumListEvent());
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
      body: BlocBuilder<PhotoGalleryBloc, PhotoGalleryState>(
        builder: (context, state) {
          return state.isLoadingAlbums
              ? const Center(
                  child: CupertinoActivityIndicator(),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 6,
                  ),
                  itemCount: state.albums.length,
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    var album = state.albums[index];
                    return AlbumListTile(
                      albumThumbnail: state.albumThumbnailByte[index],
                      albumName: album.name ?? "Unnamed Album",
                      imageCount: album.count,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ImageListPage(
                              album: album,
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
        },
      ),
    );
  }
}
