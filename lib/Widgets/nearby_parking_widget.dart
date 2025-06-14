import 'package:flutter/material.dart';
import 'package:flutter_car/Widgets/container_widget.dart';
import 'package:flutter_car/Widgets/starts_widget.dart';
import 'package:flutter_car/models/park.dart';
import 'package:flutter_car/theme/app_pallete.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class NearbyParkingWidget extends StatelessWidget {
  const NearbyParkingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "Nearby \nParking Spots",
      actionText: "View All",
      onActionTap: () {},
      child: SizedBox(
        height: 200,
        child: ListView.separated(
          itemCount: parks.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(16);
          },
          itemBuilder: (BuildContext context, int index) {
            return NearbyParkingItem(
              park: parks[index],
            );
          },
        ),
      ),
    );
  }
}

class NearbyParkingItem extends StatelessWidget {
  final Park park;
  const NearbyParkingItem({super.key, required this.park});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                park.title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppPallete.colorTextPrimary,
                ),
              ),
              Gap(8),
              content(),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox content() {
    return SizedBox(
      width: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StartsWidget(
            icon: 'assets/svgs/routing.svg',
            text: park.distance,
          ),
          StartsWidget(
            icon: 'assets/svgs/dollar.svg',
            text: park.price,
          ),
        ],
      ),
    );
  }

  Container image() {
    return Container(
      height: 100,
      width: 170,
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          image: AssetImage(park.image),
          fit: BoxFit.cover,
        ),
      ),
      child: park.type != null && park.typeText != null
          ? Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: park.type == ParkType.discount
                    ? AppPallete.colorPink
                    : AppPallete.colorPrimary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                park.typeText!.toUpperCase(),
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  color: AppPallete.white,
                ),
              ),
            )
          : null,
    );
  }
}
