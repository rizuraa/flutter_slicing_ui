import 'package:flutter/material.dart';
import 'package:flutter_car/theme/app_pallete.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconWidget extends StatelessWidget {
  final String iconPath;

  const IconWidget({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: AppPallete.bgBlue,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
        colorFilter: const ColorFilter.mode(
          AppPallete.colorPrimaryDark,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
