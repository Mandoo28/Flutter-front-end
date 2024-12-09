import 'package:flutter/material.dart';
import '../components/app_button.dart';
import '../components/app_input.dart';
import '../components/app_padding.dart';
import '../components/gap.dart';
import '../components/login_footer.dart';
import '../constant/colors.dart';
import '../utils/helper.dart';
import '../utils/route_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final focusNodeEmail = FocusNode();
  final focusNodePassword = FocusNode();

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    Helper helper = Helper();
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
                children: [
                  Center(
                    child: Container(
                      child: const Image(
                        width: 80,
                        fit: BoxFit.cover,
                        image: AssetImage("lib/assets/LOGOnew.png"),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "سجل دخول",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        " الان",
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Gap(isWidth: false, isHeight: true, height: height * 0.02),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        AppInput(
                            myController: email,
                            focusNode: focusNodeEmail,
                            onFiledSubmitedValue: (value) {
                              print(value);
                            },
                            keyBoardType: TextInputType.emailAddress,
                            obscureText: false,
                            isFilled: true,
                            hinit: "ادخل الايميل",
                            leftIcon: true,
                            icon: const Icon(Icons.email),
                            onValidator: (value) {
                              if (value.isEmpty)
                                return  "ادخل الايميل";
                              else if (!helper.emailValid(value))
                                return "أدخل بريد إلكتروني غير صالح";
                            }),
                        Gap(
                            isWidth: false,
                            isHeight: true,
                            height: height * 0.019),
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
                                return 'أدخل كلمة المرور';
                              else if (value.length < 4)
                                return "كلمة المرور يجب أن تتكون من 6 أحرف على الأقل";
                            }),
                      ],
                    ),
                  ),
                  Gap(isWidth: false, isHeight: true, height: height * 0.019),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RoutesName.forgotPasswordScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "هل نسيت كلمة السر؟",
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: AppColors.textPrimary,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(isWidth: false, isHeight: true, height: height * 0.04),
                  AppButton(
                    onPress: () {
                      if (_formkey.currentState!.validate()) {
                        print("okay");
                        _formkey.currentState!.reset();
                        Navigator.pushNamed(context, RoutesName.faqScreen);
                      }
                    },
                    title: "تسجيل الدخول",
                    height: 63,
                    textColor: AppColors.whiteColor,
                  ),
                  const LoginFooter()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
