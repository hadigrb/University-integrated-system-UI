import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniapp/auth.dart';

import 'gen/assets.gen.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Text(
                  'پروفایل',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                const _ProfileImage(),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'نام: ',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                        Text(
                          'هادی',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'نام خانوادگی: ',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                        Text(
                          'قربانی',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'شماره دانشجویی: ',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                        Text(
                          '۹۹۱۸۳۰۲۴۵',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'رشته: ',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                        Text(
                          'مهندسی کامپیوتر',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'مقطع: ',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                        Text(
                          'کارشناسی',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 19,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xffef233c)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (cotext) {
                        return const AuthScreen();
                      }));
                    },
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(
                          fontFamily: 'vazir',
                          color: Theme.of(context).cardColor),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 175,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(86),
          color: Theme.of(context).primaryColor,
          gradient: const LinearGradient(begin: Alignment.topLeft, colors: [
            Color(0xffe85d04),
            Color(0xfffaa307),
            Color(0xffffd60a),
          ])),
      child: Container(
        width: 160,
        height: 160,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: Theme.of(context).cardColor),
        child: Assets.image.profilePic.image(),
      ),
    );
  }
}
