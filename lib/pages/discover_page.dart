import 'package:flutter/material.dart';
import 'package:flutter_car/Widgets/categories_widget.dart';
import 'package:flutter_car/Widgets/hero_widget.dart';
import 'package:flutter_car/Widgets/in_progress_widget.dart';
import 'package:flutter_car/Widgets/more_widget.dart';
import 'package:flutter_car/Widgets/nearby_parking_widget.dart';
import 'package:gap/gap.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeroWidgets(),
          const Gap(20),
          InProgressWidget(),
          const Gap(20),
          NearbyParkingWidget(),
          const Gap(20),
          CategoriesWidget(),
          const Gap(20),
          MoreWidget(),
        ],
      ),
    );
  }
}
