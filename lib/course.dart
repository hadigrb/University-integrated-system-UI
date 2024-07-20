import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniapp/home.dart';
import 'package:uniapp/main.dart';
//screen UI starts here
class CourseDetail extends StatelessWidget {
  final String courseName;
  final String profName;

  const CourseDetail(
      {super.key, required this.courseName, required this.profName});

  @override
  Widget build(BuildContext context) {
    //this is list of class news
    List<Widget> news = [
      Text(
        'با سلام خدمت دانشجویان عزیز، کلاس جبرانی ساعت ۱۰ برگزار خواهد شد.',
        style: TextStyle(
            fontFamily: 'Vazir',
            fontSize: 14,
            color: Theme.of(context).primaryColorDark),
      ),
      Text(
        'با سلام خدمت دانشجویان عزیز، کلاس جبرانی ساعت ۱۰ برگزار خواهد شد.',
        style: TextStyle(
            fontFamily: 'Vazir',
            fontSize: 14,
            color: Theme.of(context).primaryColorDark),
      ),
      Text(
        'با سلام خدمت دانشجویان عزیز، کلاس جبرانی ساعت ۱۰ برگزار خواهد شد.',
        style: TextStyle(
            fontFamily: 'Vazir',
            fontSize: 14,
            color: Theme.of(context).primaryColorDark),
      ),
      Text(
        'با سلام خدمت دانشجویان عزیز، کلاس جبرانی ساعت ۱۰ برگزار خواهد شد.',
        style: TextStyle(
            fontFamily: 'Vazir',
            fontSize: 14,
            color: Theme.of(context).primaryColorDark),
      ),
      Text(
        'با سلام خدمت دانشجویان عزیز، کلاس جبرانی ساعت ۱۰ برگزار خواهد شد.',
        style: TextStyle(
            fontFamily: 'Vazir',
            fontSize: 14,
            color: Theme.of(context).primaryColorDark),
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffFBFCFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Text(
                          courseName,
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (context) {
                              return const MainScreen();
                            }));
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Theme.of(context).primaryColor,
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'نام استاد',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Theme.of(context).primaryColorDark),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            profName,
                            style: TextStyle(
                                fontFamily: 'Vazir',
                                color: Theme.of(context).cardColor),
                          )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'غیبت',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color:
                                          Theme.of(context).primaryColorDark),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                '۳',
                                style: TextStyle(
                                    fontFamily: 'Vazir',
                                    color: Theme.of(context).cardColor),
                              )),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              'حضور',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color:
                                          Theme.of(context).primaryColorDark),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  '۸',
                                  style: TextStyle(
                                      fontFamily: 'Vazir',
                                      color: Theme.of(context).cardColor),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'تاریخ میانترم',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Theme.of(context).primaryColorDark),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '۱۴۰۳/۰۳/۲۷',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: Theme.of(context).cardColor,
                                      fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'تاریخ پایانترم',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Theme.of(context).primaryColorDark),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '۱۴۰۳/۰۳/۲۷',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                  color: Theme.of(context).cardColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 25),
                child: Row(
                  children: [
                    Text(
                      'اطلاعیه های کلاس',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Theme.of(context).primaryColorDark),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                    itemExtent: 100,
                    shrinkWrap: true,
                    itemCount: news.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Theme.of(context).primaryColor)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: news[index],
                          )),
                        ),
                      );
                    }),
              )
              // const _PostList(),
            ],
          ),
        ),
      ),
    );
  }
}
