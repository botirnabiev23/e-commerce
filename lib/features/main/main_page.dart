import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market_place/features/main/widgets/bottom_bar_item_widget.dart';

class MainPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainPage({
    super.key,
    required this.navigationShell,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = widget.navigationShell.currentIndex;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    _selectedIndex = widget.navigationShell.currentIndex;
    super.didUpdateWidget(oldWidget);
  }

  void _onTap(int index) {
    widget.navigationShell.goBranch(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: widget.navigationShell,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                child: Container(
                  color: Colors.white.withOpacity(0.2),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      splashFactory: NoSplash.splashFactory,
                      highlightColor: Colors.transparent,
                    ),
                    child: BottomNavigationBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      currentIndex: _selectedIndex,
                      onTap: _onTap,
                      selectedFontSize: 10,
                      unselectedFontSize: 10,
                      selectedItemColor: const Color(0xff0ABAB5),
                      unselectedItemColor:
                          const Color(0xff8B9099).withOpacity(0.7),
                      selectedLabelStyle: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0ABAB5),
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff8B9099).withOpacity(0.7),
                      ),
                      items: [
                        BottomNavigationBarItem(
                          icon: CustomBottomNavIcon(
                            imagePath: 'assets/images/home.svg',
                            isSelected: _selectedIndex ==
                                BottomNavigationItem.home.index,
                            padding: const EdgeInsets.only(bottom: 6, top: 8),
                          ),
                          label: 'Categories',
                        ),
                        BottomNavigationBarItem(
                          icon: CustomBottomNavIcon(
                            imagePath: 'assets/images/eat.svg',
                            isSelected: _selectedIndex ==
                                BottomNavigationItem.basket.index,
                            padding: const EdgeInsets.only(bottom: 6, top: 8),
                          ),
                          label: 'Basket',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum BottomNavigationItem {
  home,
  basket;
}
