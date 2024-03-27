import 'package:flutter/material.dart';

import '../../../../common_widgets/extended_inkwell.dart';
import '../../../../config/constants/app_color.dart';

class AlbumListTile extends StatelessWidget {
  const AlbumListTile({
    super.key,
    required this.onTap,
  });

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
            child: Image.network(
              "https://img.freepik.com/premium-photo/lake-braies-landscape-simple-education_956920-35983.jpg",
              height: 173,
              fit: BoxFit.cover,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 173,
              color: AppColor.kBlackColor.withOpacity(0.5),
            ),
          ),
          const Positioned(
            bottom: 12,
            left: 14,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColor.kWhiteColor,
                  ),
                ),
                Text(
                  "122 Photos",
                  style: TextStyle(
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
