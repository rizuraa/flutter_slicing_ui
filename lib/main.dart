import 'package:flutter/material.dart';
import 'package:flutter_car/Widgets/custom_bottom_navbar.dart';
import 'package:flutter_car/pages/discover_page.dart';
import 'package:flutter_car/pages/float_page.dart';
import 'package:flutter_car/pages/order_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DiscoverPage(),
    const OrderPage(),
    const FloatPage(),
    const Center(child: Text("Setting Page")), // sementara
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onItemTapped: _onTabSelected,
      ),
    );
  }
}
