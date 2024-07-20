import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dining extends StatelessWidget {
  const Dining({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'اتوماسیون تغذیه',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'برنامه غذایی',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 18,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      defaultColumnWidth: const FixedColumnWidth(100),
                      border: TableBorder.all(
                          color: Theme.of(context).primaryColor,
                          style: BorderStyle.solid,
                          width: 0.7),
                      children: [
                        TableRow(
                          children: [
                            Container(
                              color: Theme.of(context).primaryColor,
                              child: const Column(children: []),
                            ),
                            const Column(children: [
                              Text('نام غذا',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff4cc9f0)))
                            ]),
                            const Column(children: [
                              Text('وعده',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff4cc9f0)))
                            ]),
                            const Column(children: [
                              Text('محل رزرو',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff4cc9f0)))
                            ]),
                          ],
                        ),
                        TableRow(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('شنبه',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Theme.of(context).primaryColor))
                                ]),
                            Column(children: [
                              Text('-',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Theme.of(context).primaryColorDark))
                            ]),
                            Column(children: [
                              Text('-',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Theme.of(context).primaryColorDark))
                            ]),
                            Column(children: [
                              Text('-',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color:
                                          Theme.of(context).primaryColorDark))
                            ]),
                          ],
                        ),
                        TableRow(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('یکشنبه',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Theme.of(context).primaryColor))
                                ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('-',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('-',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('-',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                          ],
                        ),
                        TableRow(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('دوشنبه',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Theme.of(context).primaryColor))
                                ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('قیمه',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Vazir',
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('ناهار',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('سلف مرکزی',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                          ],
                        ),
                        TableRow(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('سه شنبه',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Theme.of(context).primaryColor))
                                ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('-',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('ناهار',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('بوفه ادبیات',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                          ],
                        ),
                        TableRow(
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('چهارشنبه',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Theme.of(context).primaryColor))
                                ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('کوبیده',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('ناهار',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                            Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('رستوران میزبان',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .primaryColorDark)),
                              )
                            ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'کیف پول',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 18,
                              color: Theme.of(context).primaryColorDark),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'موجودی تغذیه: ',
                              style: TextStyle(
                                  fontFamily: 'Vazir',
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColorDark),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: Text(
                                '12,500',
                                style: TextStyle(
                                    fontFamily: 'Vazir',
                                    color: Theme.of(context).cardColor),
                              )),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff70e000),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)))),
                            onPressed: () {},
                            child: Text(
                              'شارژ',
                              style: TextStyle(
                                  fontFamily: 'Vazir',
                                  color: Theme.of(context).cardColor),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'موجودی قطار: ',
                              style: TextStyle(
                                  fontFamily: 'Vazir',
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColorDark),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: Text(
                                '12,500',
                                style: TextStyle(
                                    fontFamily: 'Vazir',
                                    color: Theme.of(context).cardColor),
                              )),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff70e000),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)))),
                            onPressed: () {},
                            child: Text(
                              'شارژ',
                              style: TextStyle(
                                  fontFamily: 'Vazir',
                                  color: Theme.of(context).cardColor),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 100),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xffffb703)),
                            minimumSize: MaterialStateProperty.all(
                                Size(MediaQuery.of(context).size.width, 60))),
                        onPressed: () {},
                        child: Text(
                          'رزرو غذا',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              fontSize: 18,
                              color: Theme.of(context).cardColor),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
