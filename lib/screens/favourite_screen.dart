import 'package:flutter/material.dart';
import '../components/gap.dart';
import '../components/home/explore_card.dart';
import '../components/shared/screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Screen(
        isBackButton: false,
        isBottomTab: true,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *
                  0.06, // نسبة مئوية من ارتفاع الشاشة
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Text(
                      "My favorite",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width *
                            0.04, // حجم ديناميكي للنص
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 21, 26, 56),
                      ),
                    ),
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width *
                        0.04, // مسافة ديناميكية
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.delete_forever),
                        color: const Color.fromARGB(255, 78, 86, 129),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.04),
            Row(
              children: [
                const ExploreCard(
                  title: "بيت",
                  rating: "4.9",
                  location: "رأس الحكمة",
                  isHeart: false,
                  path:
                  "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=800",
                ),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const ExploreCard(
                  title: "بيت",
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
                  title: "شقة",
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
