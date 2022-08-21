import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class LoginPageHeader extends StatelessWidget {
  const LoginPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 32,
            spreadRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(
            32,
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Container(
            height: 140,
            width: 140,
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.5 - 70,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Logo-green.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const AppText(
              text: 'أهلا بك في تطبيق كتّاب',
              color: SECONDARY_COLOR,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const AppText(
              text: 'سجل الدخول الأن',
              color: PRIMARY_COLOR,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
