import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../common_widgets/extended_inkwell.dart';
import '../../../../config/constants/app_color.dart';
import '../../../../config/constants/constants.dart';

class AlbumListTile extends StatelessWidget {
  const AlbumListTile({
    super.key,
    required this.onTap,
    required this.albumThumbnail,
    required this.albumName,
    required this.imageCount,
  });

  final Uint8List albumThumbnail;
  final String albumName;
  final int imageCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ExtendInkWell(
      onTap: onTap,
      radius: 10,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage(
              height: 173,
              fit: BoxFit.cover,
              placeholder: MemoryImage(kTransparentImage),
              image: MemoryImage(albumThumbnail),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 173,
              color: AppColor.kBlackColor.withOpacity(0.5),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 14,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  albumName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColor.kWhiteColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "$imageCount Photos",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.kTextSubtitleColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
