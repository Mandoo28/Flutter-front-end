import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../components/app_input.dart';
import '../../components/gap.dart';
import '../../components/home/explore_card.dart';
import '../../components/home/home_category.dart';
import '../../components/shared/screen.dart';
import '../../constant/colors.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
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
      textDirection: TextDirection.rtl,
      child: Screen(
        isBackButton: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2,
                    child: imageContainer("lib/assets/images/slider.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: imageContainer("lib/assets/images/slider1.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: imageContainer("lib/assets/images/slider2.png"),
                  ),
                ]),
            Gap(
              isWidth: false,
              isHeight: true,
              height: height * 0.02,
            ),
            Text(
              "العقارات المميزة",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: AppColors.textPrimary),
            ),
            Gap(
              isWidth: false,
              isHeight: true,
              height: height * 0.005,
            ),
            Text(
              "عقاراتنا الموصى بها حصريا لك.",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 12,
                  color: AppColors.seondaryTextColor,
                  fontWeight: FontWeight.w300),
            ),
            Gap(
              isWidth: false,
              isHeight: true,
              height: height * 0.02,
            ),
            AppInput(
                myController: searchInput,
                focusNode: searchFocus,
                onFiledSubmitedValue: (value) {},
                keyBoardType: TextInputType.text,
                leftIcon: true,
                icon: Icon(Icons.search),
                isFilled: true,
                obscureText: false,
                hinit: "البحث عن الموقع...",
                onValidator: (value) {
                  if (value.isEmpty) return;
                }),
            Gap(isWidth: false, isHeight: true, height: height * 0.02),
            Container(
              height: height / 12,
              width: double.infinity,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                const HomeCategory(title: "كل", active: true),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const HomeCategory(title: "منزل", active: false),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const HomeCategory(title: "مجمع سكني", active: false),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const HomeCategory(title: "شقة", active: false),
                Gap(isWidth: true, isHeight: false, width: width * 0.03),
                const HomeCategory(title: "شقة صغيرة", active: false),
              ]),
            ),
            Gap(
              isWidth: false,
              isHeight: true,
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: '70 ',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: AppColors.textPrimary),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'العقارات',
                          style: TextStyle(fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                Container(
                  width: width / 3.5,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.inputBackground,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.filter_alt_outlined,
                        size: 25,
                        color: Color(0xffA1A5C1),
                      ),
                      Icon(
                        Icons.table_bar,
                        size: 25,
                        color: Color(0xffA1A5C1),
                      ),
                      Icon(
                        Icons.view_agenda,
                        size: 25,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Gap(
              isWidth: false,
              isHeight: true,
              height: height * 0.03,
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 20,
                runSpacing: 17,
                children: [
                  Row(
                    children: const [
                      ExploreCard(
                        title: "شقة",
                        rating: "4.9",
                        location: "رأس الحكمة",
                        isHeart: false,
                        path:
                            "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=800",
                      ),
                      ExploreCard(
                        title: "بيت",
                        rating: "4.9",
                        location: "رأس الحكمة",
                        isHeart: false,
                        path:
                            "https://images.pexels.com/photos/87223/pexels-photo-87223.jpeg?auto=compress&cs=tinysrgb&w=800",
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  imageContainer(path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(path),
      ),
    );
  }
}
