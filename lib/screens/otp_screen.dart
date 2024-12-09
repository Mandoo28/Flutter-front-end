import 'package:flutter/material.dart';
import '../components/app_padding.dart';
import '../components/gap.dart';
import '../components/header_title.dart';
import '../components/otp_card.dart';

class OtpScreen extends StatefulWidget {
  final dynamic data;
  const OtpScreen({this.data, Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: AppPadding(
              padddingValue: 15,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(isWidth: false, isHeight: true, height: height * 0.01),
                    HeaderTitle(
                      title: "ادخل ",
                      bottomTitle: "أدخل الرمز المكون من 4 أرقام الذي أرسلناه إليك للتو",
                      isBottomTitle: true,
                      bottomTitle2: widget.data['email'],
                      subtitle: "الكود",
                    ),
                    Gap(isWidth: false, isHeight: true, height: height * 0.09),
                    const OtpCard()
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
