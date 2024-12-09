import 'package:flutter/material.dart';
import 'package:mmoo/components/app_button.dart';
import 'package:mmoo/components/app_input.dart';
import 'package:mmoo/components/gap.dart';

import '../constant/colors.dart';
import '../utils/helper.dart';
import '../utils/route_name.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final username = TextEditingController();
  final focusNodeEmail = FocusNode();
  final focusNodePassword = FocusNode();
  final focusNodeUser = FocusNode();

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
    username.dispose();
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
    focusNodeUser.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    Helper helper = Helper();
    return Column(
      children: [
        Form(
          key: _formkey,
          child: Column(
            children: [
              AppInput(
                  myController: username,
                  focusNode: focusNodeUser,
                  onFiledSubmitedValue: (value) {
                    print(value);
                  },
                  keyBoardType: TextInputType.text,
                  obscureText: false,
                  isFilled: true,
                  hinit: "أدخل الاسم الكامل",
                  leftIcon: true,
                  icon: const Icon(Icons.man),
                  onValidator: (value) {
                    if (value.isEmpty)
                      return "أدخل الاسم الكامل";
                    else if (value.length < 3)
                      return "الاسم الكامل يتكون من 3 أحرف على الأقل";
                  }),
              Gap(isWidth: false, isHeight: true, height: height * 0.019),
              AppInput(
                  myController: email,
                  focusNode: focusNodeEmail,
                  onFiledSubmitedValue: (value) {
                    print(value);
                  },
                  keyBoardType: TextInputType.emailAddress,
                  obscureText: false,
                  isFilled: true,
                  hinit: "أدخل البريد الإلكتروني",
                  leftIcon: true,
                  icon: const Icon(Icons.email),
                  onValidator: (value) {
                    if (value.isEmpty)
                      return 'أدخل البريد الإلكتروني';
                    else if (!helper.emailValid(value))
                      return "أدخل بريدًا إلكترونيًا غير صالح";
                  }),
              Gap(isWidth: false, isHeight: true, height: height * 0.019),
              AppInput(
                  myController: password,
                  focusNode: focusNodePassword,
                  onFiledSubmitedValue: (value) {
                    print(value);
                  },
                  keyBoardType: TextInputType.text,
                  obscureText: true,
                  hinit: "أدخل كلمة المرور",
                  leftIcon: true,
                  icon: const Icon(Icons.lock),
                  isFilled: true,
                  onValidator: (value) {
                    if (value.isEmpty)
                      return "أدخل كلمة المرور";
                    else if (value.length < 4)
                      return "كلمة المرور يجب أن تتكون من 6 أحرف على الأقل";
                  }),
            ],
          ),
        ),
        Gap(isWidth: false, isHeight: true, height: height * 0.03),
        AppButton(
          onPress: () {
            if (_formkey.currentState!.validate()) {
              Navigator.pushNamed(context, RoutesName.otpScreen,
                  arguments: {"email": email.text});
              _formkey.currentState!.reset();
            }
          },
          title: "انشاء حساب",
          height: 63,
          textColor: AppColors.whiteColor,
        )
      ],
    );
  }
}
