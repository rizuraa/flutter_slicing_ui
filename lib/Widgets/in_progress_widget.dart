import 'package:flutter/material.dart';
import 'package:flutter_car/Widgets/container_widget.dart';
import 'package:flutter_car/Widgets/button_widget.dart';
import 'package:flutter_car/theme/app_pallete.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "In Progress Parking to",
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        decoration: BoxDecoration(
          color: AppPallete.colorPrimary,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage('assets/images/bg_in_progress.png'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: AppPallete.colorPrimary.withOpacity(.4),
              blurRadius: 24,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/svgs/grid.svg',
              width: 26,
              height: 26,
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Angga Tower",
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: AppPallete.white,
                  ),
                ),
                Text(
                  "Lot 193Mb",
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppPallete.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            ButtonWidget(text: "Open Maps", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
