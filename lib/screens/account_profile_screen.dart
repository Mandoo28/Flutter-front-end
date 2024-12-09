import 'package:flutter/material.dart';
import '../components/gap.dart';
import '../components/home/explore_card.dart';
import '../components/shared/screen.dart';
import '../utils/route_name.dart';

class AccountProfileScreen extends StatefulWidget {
  const AccountProfileScreen({super.key});
  @override
  State<AccountProfileScreen> createState() => _AccountProfileScreenState();
}
class _AccountProfileScreenState extends State<AccountProfileScreen> {
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
                  0.06,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Text(
                      "حسابي",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width *
                            0.05,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 21, 26, 56),
                      ),
                    ),
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width *
                        0.04,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.logout),
                        color: const Color.fromARGB(255, 78, 86, 129),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pushReplacementNamed(RoutesName.startedScreen);
                        },
                      )
                    ),
                  ),
                ],
              ),
            ),
            Gap(isWidth: false, isHeight: true, height: height * 0.04),
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                          image: AssetImage('lib/assets/images/user.jpg'))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFF234f68)),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: Column(
                children: [
                  Text("user",style:  TextStyle(fontSize: 20,fontWeight:FontWeight.bold , color: Colors.black)),
                  Text("user22@gmail.com",style: TextStyle(color:Colors.black),)
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              child: Row(
                children: [
                  Text("قائمتي",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                ],
              ),
            ),
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
