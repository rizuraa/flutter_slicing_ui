import 'package:flutter/material.dart';
import 'package:flutter_car/theme/app_pallete.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppPallete.white,
      selectedItemColor: AppPallete.colorPrimary,
      unselectedItemColor: AppPallete.colorGray,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      items: [
        _buildItem(
          'assets/svgs/discover.svg',
          'Home',
          currentIndex == 0,
        ),
        _buildItem(
          'assets/svgs/orders.svg',
          'Orders',
          currentIndex == 1,
        ),
        _buildItem(
          'assets/svgs/wallet.svg',
          'Wallet',
          currentIndex == 2,
        ),
        _buildItem(
          'assets/svgs/setting.svg',
          'Setting',
          currentIndex == 3,
        ),
      ],
    );
  }

  BottomNavigationBarItem _buildItem(
      String iconPath, String label, bool isActive) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        colorFilter: const ColorFilter.mode(
          AppPallete.colorGray,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        iconPath,
        colorFilter: const ColorFilter.mode(
          AppPallete.colorPrimary,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}
