import 'package:flutter/material.dart';

import '../../../../common_widgets/extended_inkwell.dart';
import '../../../../config/constants/constants.dart';
import 'thumbnail_provider.dart';

class ImageListTile extends StatelessWidget {
  const ImageListTile({
    super.key,
    required this.mediaId,
    required this.onTap,
  });

  final String mediaId;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ExtendInkWell(
      onTap: onTap,
      radius: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.black12,
          child: FadeInImage(
            height: 173,
            width: 173,
            fit: BoxFit.cover,
            placeholder: MemoryImage(kTransparentImage),
            image: ThumbnailProvider(
              mediumId: mediaId,
              highQuality: true,
            ),
          ),
        ),
      ),
    );
  }
}
