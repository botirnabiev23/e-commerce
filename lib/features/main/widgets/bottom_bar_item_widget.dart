import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavIcon extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final EdgeInsetsGeometry padding;

  const CustomBottomNavIcon({
    super.key,
    required this.imagePath,
    required this.isSelected,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SvgPicture.asset(
        imagePath,
        color: isSelected ? const Color(0xff0ABAB5) : Color(0xff8B9090),
      ),
    );
  }
}
