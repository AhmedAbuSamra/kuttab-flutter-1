import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-buttons.dart';
import 'package:kuttab/views/componant/app-text-field.dart';
import 'package:kuttab/views/componant/app-text.dart';
import 'package:kuttab/views/login-page/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        //color: Colors.red,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Logo-background-green.png'),
            fit: BoxFit.fitWidth,
            opacity: 0.1,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LoginPageHeader(),
              const SizedBox(height: 43),
              //school Id text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: const [
                    SizedBox(
                      child: Icon(
                        Icons.mosque_rounded,
                        color: PRIMARY_COLOR,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 10.25),
                    SizedBox(
                      child: AppText(
                        text: 'رقم المدرسة',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              //school Id text field
              Container(
                margin: EdgeInsets.symmetric(horizontal: 11),
                child: AppTextField(
                  hintText: 'ادخل رقم المدرسة',
                  obscure: false,
                ),
              ),
              const SizedBox(height: 19),
              //user Id text
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: const [
                    SizedBox(
                      child: Icon(
                        Icons.person_rounded,
                        color: PRIMARY_COLOR,
                        size: 17,
                      ),
                    ),
                    SizedBox(width: 10.25),
                    SizedBox(
                      child: AppText(
                        text: 'رقم المستخدم',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              //user Id text field
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 11),
                child: AppTextField(
                  hintText: 'ادخل رقم المستخدم',
                  obscure: false,
                ),
              ),
              const SizedBox(height: 19),
              //Password text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: const [
                    SizedBox(
                      child: Icon(
                        Icons.password_rounded,
                        color: PRIMARY_COLOR,
                        size: 17,
                      ),
                    ),
                    SizedBox(width: 10.25),
                    SizedBox(
                      child: AppText(
                        text: 'كلمة المرور',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              //Password text field
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 11),
                child: AppTextField(
                  hintText: 'ادخل كلمة المرور',
                  obscure: true,
                ),
              ),
              //stick button to bottom of screen
              SizedBox(
                height: (MediaQuery.of(context).size.height - 710 < 20
                    ? 20
                    : MediaQuery.of(context).size.height - 710),
              ),
              //login button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: FullColorButton(
                  text: 'تسجيل الدخول',
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
