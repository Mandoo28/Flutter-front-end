import 'package:flutter/cupertino.dart';
import 'package:mmoo/constant/colors.dart';
import 'package:mmoo/screens/account_profile_screen.dart';
import 'package:mmoo/screens/favourite_screen.dart';
import 'package:mmoo/screens/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'featured/featured_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen() {
    return [
      HomeScreen(),
      FeaturedScreen(),
      FeaturedScreen(),
      FavouriteScreen(),
      AccountProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          activeColorPrimary: AppColors.textPrimary,
          inactiveColorPrimary: Color(0xffA0A2AF)),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.search),
          activeColorPrimary: AppColors.textPrimary,
          inactiveColorPrimary: Color(0xffA0A2AF)),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.plus,color: Color(0xffFFFFFF),),
          activeColorPrimary: AppColors.textPrimary,
          ),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.heart),
          activeColorPrimary: AppColors.textPrimary,
          inactiveColorPrimary: Color(0xffA0A2AF)),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.person),
          activeColorPrimary: AppColors.textPrimary,
          inactiveColorPrimary: Color(0xffA0A2AF)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreen(),
      items: _navBarItems(),
      navBarStyle: NavBarStyle.style15,
      backgroundColor: AppColors.whiteColor,
    );
  }
}
