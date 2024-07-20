import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:uniapp/course.dart';

import 'gen/assets.gen.dart';

//screen UI starts here
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //this is list of uni news
    List<Widget> uniNews = [
     const _News(text: 'اطلاعیه تعطیلی اماکن ورزشی ضمن عرض تسلیت، به اطلاع دانشجویان گرامی می رساند، مجموعه های ورزشی دانشگاه، سه شنبه و چهارشنبه و پنجشنبه تعطیل خواهد بود')
    ];
    //this is list of courses
    List<Widget> courseList = [
      const _CourseItem(
        courseName: 'داده کاوی',
        profNameItem: 'حسین عباسی مهر',
      ),
      const _CourseItem(
        courseName: 'بازیابی اطلاعات',
        profNameItem: 'حسین عباسی مهر',
      ),
      const _CourseItem(
        courseName: 'برنامه نویسی وب',
        profNameItem: 'سینا صمدی',
      ),
      const _CourseItem(
        courseName: 'اینترنت اشیا',
        profNameItem: 'کیمیا شیرینی',
      ),
      const _CourseItem(
        courseName: 'امنیت اطلاعات',
        profNameItem: 'ندا سلطانی',
      ),
      const _CourseItem(
        courseName: 'اندیشه ۲',
        profNameItem: 'مرتضی قربانی',
      ),
      const _CourseItem(
        courseName: 'پروژه فناوری اطلاعات',
        profNameItem: 'عسگرعلی بویر',
      ),
    ];
    DateTime now = DateTime.now();
    Jalali jalali = now.toJalali();
    String year = replaceFarsiNumber(jalali.year.toString());
    String month = replaceFarsiNumber(jalali.month.toString());
    String day = replaceFarsiNumber(jalali.day.toString());
    bool evenDate = true;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 24, 32, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        replaceDay(jalali.weekDay.toString()),
                                        style: TextStyle(
                                            fontFamily: 'Vazir',
                                            color: Theme.of(context)
                                                .primaryColorDark),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        replaceDay(day),
                                        style: TextStyle(
                                            fontFamily: 'Vazir',
                                            color: Theme.of(context)
                                                .primaryColorDark),
                                      )
                                    ],
                                  ),
                                  Text(
                                    replaceMonthNumber(month),
                                    style: TextStyle(
                                        fontFamily: 'Vazir',
                                        fontSize: 20,
                                        color:
                                            Theme.of(context).primaryColorDark),
                                  ),
                                  Text(
                                    year,
                                    style: TextStyle(
                                        fontFamily: 'Vazir',
                                        color:
                                            Theme.of(context).primaryColorDark),
                                  ),
                                ],
                              ),
                              Text(
                                evenDate ? 'هفته زوج' : 'هفته فرد',
                                style: TextStyle(
                                    fontFamily: 'Vazir',
                                    fontSize: 16,
                                    color:
                                        evenDate ? Colors.green : Colors.red),
                              ),
                            ],
                          ),
                        ),
                        CarouselSlider.builder(
                            itemCount: uniNews.length,
                            itemBuilder: (context, index, realIndex) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 12, 20, 12),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 12, bottom: 12),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColorDark,
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: Center(child: uniNews[index]),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              scrollDirection: Axis.horizontal,
                              viewportFraction: 0.8,
                              aspectRatio: 1.7,
                              disableCenter: true,
                              autoPlay: true,
                            )),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
                              child: Row(
                                children: [
                                  Text(
                                    'دروس من',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(32, 24, 32, 60),
                              child: SingleChildScrollView(
                                child: GridView.count(
                                  shrinkWrap: true,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                  crossAxisCount: 3,
                                  children: courseList,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _News extends StatelessWidget {
  final text;

  const _News({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontFamily: 'Vazir', fontSize: 16),
      ),
    );
  }
}

class _CourseItem extends StatelessWidget {
  final courseName;
  final profNameItem;

  const _CourseItem({
    super.key,
    required this.courseName,
    required this.profNameItem,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return CourseDetail(courseName: courseName, profName: profNameItem);
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(24)),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            courseName,
            style: TextStyle(
                fontFamily: 'Vazir', color: Theme.of(context).cardColor),
          ),
        )),
      ),
    );
  }
}

//this function replaces english numbers with persian numbers
String replaceFarsiNumber(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(english[i], farsi[i]);
  }

  return input;
}

//this function replaces number of the month with name of the month
String replaceMonthNumber(String input) {
  const number = [
    '۱',
    '۲',
    '۳',
    '۴',
    '۵',
    '۶',
    '۷',
    '۸',
    '۹',
    '۱۰',
    '۱۱',
    '۱۲'
  ];
  const month = [
    'فروردین',
    'اردیبهشت',
    'خرداد',
    'تیر',
    'مرداد',
    'شهریور',
    'مهر',
    'آبان',
    'آذر',
    'دی',
    'بهمن',
    'اسفند'
  ];

  for (int i = 0; i < number.length; i++) {
    input = input.replaceAll(number[i], month[i]);
  }

  return input;
}

//this function replaces number of the day with name of the day
String replaceDay(String input) {
  const number = ['1', '2', '3', '4', '5', '6', '7'];
  const day = [
    'شنبه',
    'یکشنبه',
    'دوشنبه',
    'سه شنبه',
    'چهارشنبه',
    'پنجشنبه',
    'جمعه'
  ];

  for (int i = 0; i < number.length; i++) {
    input = input.replaceAll(number[i], day[i]);
  }

  return input;
}
