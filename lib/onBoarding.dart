import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uniapp/auth.dart';

import 'gen/assets.gen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  //a list that defines the pages of onBoarding Screen
  final List<Widget> _list = const [
    Pages(
        title: 'دسترسی آسان',
        description:
            'با یونی اپ میتونی خیلی راحت و بدون دردسر از سامانه های دانشگاه استفاده کنی و لذت ببری :)'),
    Pages(
        title: 'یکپارچگی',
        description:
            'دیگه نیازی نیست برای انجام کارات وارد سامانه های مختلف بشی، با یونی اپ میتونی همشو یجا داشته باشی!'),
    Pages(
        title: 'ظاهر زیبا',
        description:
            'میتونی خدمات دانشگاه رو با یه ظاهر و رابط کاربری زیبا داشته باشی و از استفاده از خدمات لذت ببری ;)'),
  ];

  int page = 0;

  @override
  void initState() {
    _controller.addListener(() {
      if (_controller.page!.round() != page) {
        setState(() {
          page = _controller.page!.round();
        });
      }
    });
    super.initState();
  }

  //Screen UI starts here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Column(
                  children: [
                    Assets.image.splashIcon
                        .image(color: Theme.of(context).primaryColor),
                    Text(
                      'یونی اپ',
                      style: TextStyle(
                          fontFamily: 'Vazir',
                          fontSize: 18,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child:
                  _OnBoarding(controller: _controller, list: _list, page: page),
            )
          ],
        ),
      ),
    );
  }
}

//this is the onBoarding Widget
class _OnBoarding extends StatelessWidget {
  const _OnBoarding({
    super.key,
    required PageController controller,
    required List<Widget> list,
    required this.page,
  })  : _controller = controller,
        _list = list;

  final PageController _controller;
  final List<Widget> _list;
  final int page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(32), topLeft: Radius.circular(32)),
        boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1)),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _list.length,
              itemBuilder: (context, index) {
                return _list[index];
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: _list.length,
                    axisDirection: Axis.horizontal,
                    effect: ExpandingDotsEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        activeDotColor: Theme.of(context).primaryColor),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Theme.of(context).primaryColor),
                        minimumSize:
                            MaterialStateProperty.all(const Size(84, 60)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    onPressed: () {
                      if (page == _list.length - 1) {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return const AuthScreen();
                        }));
                      } else {
                        _controller.animateToPage(page + 1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.decelerate);
                      }
                    },
                    child: page == _list.length - 1
                        ? Icon(
                            CupertinoIcons.check_mark,
                            color: Theme.of(context).cardColor,
                          )
                        : Icon(
                            CupertinoIcons.arrow_left,
                            color: Theme.of(context).cardColor,
                          ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//this is the pages Widget for onBoarding
class Pages extends StatelessWidget {
  final String title;
  final String description;

  const Pages({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontFamily: 'Vazir',
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: Theme.of(context).primaryColor),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: TextStyle(
                fontFamily: 'Vazir', fontWeight: FontWeight.w300, fontSize: 16,color: Theme.of(context).primaryColorDark),
          )
        ],
      ),
    );
  }
}
