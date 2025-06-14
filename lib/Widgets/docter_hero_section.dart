import 'package:flutter/material.dart';
import 'package:flutter_car/Widgets/icon_widget.dart';
import 'package:flutter_car/theme/app_pallete.dart';
import 'package:flutter_car/theme/app_text_style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DocterHeroSection extends StatelessWidget {
  final String username;
  const DocterHeroSection({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
        right: 16,
        left: 16,
        bottom: 54,
      ),
      color: AppPallete.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Baris Atas: Foto, Text, dan Icon
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/angga.png'),
              ),
              const Gap(8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: AppTextStyle.lightTextBlue(),
                    ),
                    const Gap(2),
                    Text(
                      username,
                      style: AppTextStyle.regularTextBlack(),
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  IconWidget(iconPath: "assets/svgs/bel.svg"),
                  Gap(8),
                  IconWidget(iconPath: "assets/svgs/setting.svg"),
                ],
              ),
            ],
          ),
          const Gap(22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/doctor.svg",
                    width: 15,
                    height: 18,
                  ),
                  const Gap(8),
                  Text(
                    "Doctor",
                    style: AppTextStyle.lightTextBlue(),
                  ),
                ],
              ),
              const Gap(3),
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/doctor.svg",
                    width: 15,
                    height: 18,
                  ),
                  const Gap(8),
                  Text(
                    "Doctor",
                    style: AppTextStyle.lightTextBlue(),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9EDFF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset("assets/svgs/doctor.svg",
                            width: 16),
                      ),
                      const Spacer(),
                      SvgPicture.asset("assets/svgs/search.svg", width: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
