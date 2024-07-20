import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniapp/course.dart';
import 'package:uniapp/dining.dart';
import 'package:uniapp/home.dart';
import 'package:uniapp/numbers.dart';
import 'package:uniapp/profile.dart';
import 'package:uniapp/sama.dart';
import 'package:uniapp/splash.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: const Locale("fa", "IR"),
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffffb703)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xffFBFCFF),
        primaryColor: const Color(0xffffb703),
        cardColor: Colors.white,
        fontFamily: 'Vazir',
        primaryColorDark: const Color(0xff495057),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontFamily: 'Vazir'
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Vazir'
          ),
          bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            fontFamily: 'Vazir'
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

const homeIndex = 0;
const samaIndex = 1;
const profileIndex = 2;
const diningIndex = 3;
const phoneIndex = 4;

bool isHomeActive = true;
bool isSamaActive = false;
bool isProfileActive = false;
bool isDiningActive = false;
bool isPhoneActive = false;

class _MainScreenState extends State<MainScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: selectedTabIndex,
            children: const [
              HomeScreen(),
              Sama(),
              Profile(),
              Dining(),
              PhoneNumbers(),
            ],
          ),
          BottomNavigationBarr(
            onTap: (int index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
          )
        ],
      ),
    );
  }
}

class BottomNavigationBarr extends StatelessWidget {
  final Function(int index) onTap;


  const BottomNavigationBarr({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: SizedBox(
        height: 105,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 70,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      blurRadius: 20, color: Colors.black.withOpacity(0.15))
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        onTap(phoneIndex);
                        isPhoneActive = true;
                        isDiningActive = false;
                        isProfileActive = false;
                        isSamaActive = false;
                        isHomeActive = false;
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_enabled_outlined,
                            color: isPhoneActive
                                ? const Color(0xffffb703)
                                : const Color(0xff495057),
                          ),
                          Text('تلفن',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Vazir',
                                color: isPhoneActive
                                    ? const Color(0xffffb703)
                                    : const Color(0xff495057),
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: InkWell(
                        onTap: () {
                          onTap(diningIndex);
                          isPhoneActive = false;
                          isDiningActive = true;
                          isProfileActive = false;
                          isSamaActive = false;
                          isHomeActive = false;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fastfood_outlined,
                              color: isDiningActive
                                  ? const Color(0xffffb703)
                                  : const Color(0xff495057),
                            ),
                            Text('تغذیه',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Vazir',
                                  color: isDiningActive
                                      ? const Color(0xffffb703)
                                      : const Color(0xff495057),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: InkWell(
                        onTap: () {
                          onTap(samaIndex);
                          isPhoneActive = false;
                          isDiningActive = false;
                          isProfileActive = false;
                          isSamaActive = true;
                          isHomeActive = false;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_chart_outlined,
                              color: isSamaActive
                                  ? const Color(0xffffb703)
                                  : const Color(0xff495057),
                            ),
                            Text('سما',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Vazir',
                                  color: isSamaActive
                                      ? const Color(0xffffb703)
                                      : const Color(0xff495057),
                                ))
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        onTap(homeIndex);
                        isPhoneActive = false;
                        isDiningActive = false;
                        isProfileActive = false;
                        isSamaActive = false;
                        isHomeActive = true;
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.home,
                            color: isHomeActive
                                ? const Color(0xffffb703)
                                : const Color(0xff495057),
                          ),
                          Text('خانه',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Vazir',
                                color: isHomeActive
                                    ? const Color(0xffffb703)
                                    : const Color(0xff495057),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  onTap(profileIndex);
                  isPhoneActive = false;
                  isDiningActive = false;
                  isProfileActive = true;
                  isSamaActive = false;
                  isHomeActive = false;
                },
                child: Container(
                  width: 62,
                  height: 85,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color: isProfileActive
                            ? const Color(0xffffb703).withOpacity(0.1)
                            : Colors.black.withOpacity(0.1))
                  ]),
                  child: Container(
                      height: 62,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.2))
                          ],
                          color: isProfileActive
                              ? const Color(0xffffb703)
                              : const Color(0xff495057),
                          borderRadius: BorderRadius.circular(35)),
                      child: Image.asset(
                        'assets/image/profile.png',
                        color: Colors.white,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
