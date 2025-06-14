import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomHeaderClipper(),
          child: Container(
            height: 160,
            color: const Color(0xFFE4B762), // Biru gelap
          ),
        ),
        ClipPath(
          clipper: CustomHeaderClipper(),
          child: Container(
            height: 150,
            color: const Color(0xFF0C4CA3), // Coklat / Emas
          ),
        ),
        Positioned(
          top: 56,
          left: 16,
          right: 16,
          child: Column(
            children: const [
              Text(
                'Leave',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'v2.0.2',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 56,
          left: 16,
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class CustomHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Kiri atas → kiri bawah → lengkung keluar (reverse)
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      0, size.height - 30, // kontrol point
      30,
      size.height -
          30, // endpoint lengkung keluar (seperti border top left radius)
    );

    // Tengah lurus
    path.lineTo(size.width - 30, size.height - 30);

    // Kanan bawah lengkung ke atas
    path.quadraticBezierTo(
      size.width,
      size.height - 30,
      size.width,
      size.height - 60,
    );

    // Kanan atas
    path.lineTo(size.width, 0);

    // Tutup
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
