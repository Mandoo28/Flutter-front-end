import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../components/gap.dart';
import '../components/header_title.dart';
import '../components/shared/screen.dart';


class GalleryGridScreen extends StatefulWidget {
  const GalleryGridScreen({super.key});

  @override
  State<GalleryGridScreen> createState() => _GalleryGridScreenState();
}

class _GalleryGridScreenState extends State<GalleryGridScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Screen(
          isBackButton: true,
          isActions: true,
          isBottomTab: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderTitle(
                title: "اختر المفضل لديك",
                title1: "نوع العقار",
                bottomTitle: "يمكنك تعديل هذا لاحقًا في إعدادات حسابك.",
                subtitle: "",
                isUnderTitle: true,
              ),
              Gap(
                isWidth: false,
                isHeight: true,
                height: height * 0.01,
              ),
              StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: imageContainer("lib/assets/images/slider.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: imageContainer("lib/assets/images/slider1.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: imageContainer("lib/assets/images/slider2.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: imageContainer("lib/assets/images/slider3.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 4,
                    mainAxisCellCount: 2,
                    child: imageContainer("lib/assets/images/slider4.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: imageContainer("lib/assets/images/slider5.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: imageContainer("lib/assets/images/slider6.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: imageContainer("lib/assets/images/slider7.png"),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 4,
                    mainAxisCellCount: 2,
                    child: imageContainer("lib/assets/images/slider8.png"),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  imageContainer(path) {
    return Image(
      fit: BoxFit.cover,
      image: AssetImage(path),
    );
  }
}
