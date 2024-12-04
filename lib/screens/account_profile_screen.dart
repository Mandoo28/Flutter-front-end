import 'package:flutter/material.dart';
import '../components/shared/screen.dart';

class AccountProfileScreen extends StatefulWidget {
  const AccountProfileScreen({super.key});

  @override
  State<AccountProfileScreen> createState() => _AccountProfileScreenState();
}

class _AccountProfileScreenState extends State<AccountProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Screen(
      isBackButton: false,
      isBottomTab: true,
      child: Text("cool"),
    );
  }
}
