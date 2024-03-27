import 'package:flutter/material.dart';

import '../config/constants/app_color.dart';

class ExtendInkWell extends StatelessWidget {
  const ExtendInkWell({
    super.key,
    required this.onTap,
    required this.child,
    this.radius,
  });

  final GestureTapCallback? onTap;
  final Widget child;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        radius ?? 0.0,
      ),
      child: Stack(
        children: [
          child,
          Positioned(
            top: 0,
            left: 0,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                splashColor: AppColor.kPrimaryColor.withOpacity(0.3),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
