import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../components/gap.dart';
import '../components/home/explore_card.dart';
import '../components/home/featured_card.dart';
import '../components/home/home_header.dart';
import '../components/home/property_card.dart';
import '../components/home/row_title_home.dart';
import '../components/shared/screen.dart';
import '../constant/colors.dart';
import '../utils/route_name.dart';
import 'featured/featured_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchInput = TextEditingController();
  final searchFocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    searchInput.dispose();
    searchFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Directionality(
      textDirection:TextDirection.rtl,
      child: Screen(
        isBackButton: true,
        isBottomTab: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(),
            Gap(isWidth: false, isHeight: true, height: height * 0.03),
            Row(
              children: [
                Text(
                  "مرحباً",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                Text(
                  "شمس الحكمة",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.bold, color: AppColors.textPrimary),
                ),
              ],
            ),
            Text(
              "لنبدأ الاستكشاف",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.03),
            Container(
              height: height / 4,
              width: double.infinity,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                const PropertyCard(
                    title: "تخفيضات\nالشقة!",
                    subtitle: "خصومات تصل إلى 60%",
                    path: "lib/assets/images/property.jpg"),
                Gap(isWidth: true, isHeight: false, width: width * 0.05),
                const PropertyCard(
                    title: "تخفيضات\nالمنازل!",
                    subtitle: "خصومات تصل إلى 60%",
                    path: "lib/assets/images/property1.jpg"),
                Gap(isWidth: true, isHeight: false, width: width * 0.05),
                const PropertyCard(
                    title: "عطلة\nالصيف",
                    subtitle: "خصومات تصل إلى 60%",
                    path: "lib/assets/images/property2.jpg"),
                Gap(isWidth: true, isHeight: false, width: width * 0.05),
              ]),
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.03),
            RowTitleHome(
              title: "العقارات المميزة",
              subtitle: "عرض الكل",
              onPress: () {},
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.02),
            Container(
              height: height / 4,
              width: double.infinity,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                const FeaturedCard(
                    path: "lib/assets/images/property2.jpg",
                    category: "شقة",
                    title: "شقة في رأس الحكمة",
                    rating: "4.9",
                    location: "رأس الحكمة",
                    payment: "10"),
                Gap(isWidth: true, isHeight: false, width: width * 0.05),
                const FeaturedCard(
                    path: "lib/assets/images/property1.jpg",
                    category: "شقة",
                    title: "بيت في رأس الحكمة",
                    rating: "4.9",
                    location: "رأس الحكمة",
                    payment: "10"),
                Gap(isWidth: true, isHeight: false, width: width * 0.05),
                const FeaturedCard(
                    path: "lib/assets/images/property.jpg",
                    category: "شقة",
                    title: "بيت في رأس الحكمة",
                    rating: "4.9",
                    location: "رأس الحكمة",
                    payment: "10"),
                Gap(isWidth: true, isHeight: false, width: width * 0.05),
              ]),
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.03),
            RowTitleHome(
              title: "استكشاف العقارات القريبة",
              subtitle: "عرض الكل",
              onPress: () {
                PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                  context,
                  settings: const RouteSettings(name: RoutesName.featuredScreen),
                  screen: const FeaturedScreen(),
                  withNavBar: false,
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.02),
            Row(
              children: [
                const ExploreCard(
                  title: "برج الفوز",
                  rating: "4.9",
                  location: "رأس الحكمة",
                  isHeart: false,
                  path:
                  "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=800",
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const ExploreCard(
                  title: "منزل البلدة",
                  rating: "4.9",
                  location: "رأس الحكمة",
                  isHeart: false,
                  path:
                  "https://images.pexels.com/photos/210617/pexels-photo-210617.jpeg?auto=compress&cs=tinysrgb&w=800",
                ),
              ],
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.02),
            Row(
              children: [
                const ExploreCard(
                  title: "شقة",
                  rating: "4.9",
                  location: "رأس الحكمة",
                  isHeart: false,
                  path:
                  "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=800",
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const ExploreCard(
                  title: "الشقة",
                  rating: "4.9",
                  location: "رأس الحكمة",
                  isHeart: false,
                  path:
                  "https://images.pexels.com/photos/87223/pexels-photo-87223.jpeg?auto=compress&cs=tinysrgb&w=800",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
