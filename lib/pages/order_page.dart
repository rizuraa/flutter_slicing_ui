import 'package:flutter/material.dart';
import 'package:flutter_car/Widgets/docter_hero_section.dart';
import 'package:flutter_car/theme/app_pallete.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.bgBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DocterHeroSection(
                username: "Rizura",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
