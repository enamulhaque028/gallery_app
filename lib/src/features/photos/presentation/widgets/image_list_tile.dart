import 'package:flutter/material.dart';

import '../../../../common_widgets/extended_inkwell.dart';

class ImageListTile extends StatelessWidget {
  const ImageListTile({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ExtendInkWell(
      onTap: onTap,
      radius: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://img.freepik.com/premium-photo/lake-braies-landscape-simple-education_956920-35983.jpg",
          height: 173,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
