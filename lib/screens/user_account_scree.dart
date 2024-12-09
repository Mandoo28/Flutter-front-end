import 'package:flutter/material.dart';
import '../components/account_form.dart';
import '../components/gap.dart';
import '../components/header_title.dart';
import '../components/shared/screen.dart';

class UserAccountScreen extends StatefulWidget {
  const UserAccountScreen({super.key});

  @override
  State<UserAccountScreen> createState() => _UserAccountScreenState();
}

class _UserAccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Screen(
        isBackButton: true,
        isBottomTab: false,
        child: Column(
          children: [
            const HeaderTitle(
              title: "اكمل",
              title1: "معلوماتك",
              bottomTitle: "يمكنك تعديل هذا لاحقًا في إعدادات حسابك",
              subtitle: "",
              isUnderTitle: true,
            ),
            Gap(
              isWidth: false,
              isHeight: true,
              height: height * 0.03,
            ),
            const AccountForm()
          ],
        ),
      ),
    );
  }
}
