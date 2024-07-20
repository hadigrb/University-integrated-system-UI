import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uniapp/entekhabVahed.dart';

class Sama extends StatelessWidget {
  const Sama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 32, 12),
                  child: Row(
                    children: [
                      Text(
                        'سما',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Theme.of(context).primaryColor),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 32, 12),
                  child: Row(
                    children: [
                      Text(
                        'برنامه هفتگی من',
                        style: TextStyle(
                            fontFamily: 'Vazir',
                            fontSize: 17,
                            color: Theme.of(context).primaryColorDark),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32, top: 15, left: 20),
                  child: SingleChildScrollView(
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
                              Text('۸:۳۰ - ۱۰:۰۰',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff4cc9f0)))
                            ]),
                            const Column(children: [
                              Text('۱۰:۱۵ - ۱۱:۴۵',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff4cc9f0)))
                            ]),
                            const Column(children: [
                              Text('۱۳:۳۰ - ۱۵:۰۰',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff4cc9f0)))
                            ]),
                            const Column(children: [
                              Text('۱۵:۳۰ - ۱۷:۰۰',
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
                                child: Text('داده کاوری',
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
                                child: Text('بازیابی اطلاعات',
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
                                child: Text(
                                    'بازیابی اطلاعات-فرد داده کاوی-زوج',
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
                                child: Text('برنامه نویسی وب',
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
                                child: Text(
                                    'برنامه نویسی وب-فرد اینترنت اشیا-زوج',
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
                                child: Text('اینترنت اشیا',
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
                                child: Text('امنیت اطلاعات',
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 18, 32, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'اخذ شده',
                            style: TextStyle(
                                fontFamily: 'Vazir',
                                fontSize: 17,
                                color: Theme.of(context).primaryColorDark),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                                child: Text(
                              '۱۵۱',
                              style: TextStyle(
                                  fontFamily: 'Vazir',
                                  color: Theme.of(context).cardColor),
                            )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'گذرانیده:',
                            style: TextStyle(
                                fontFamily: 'Vazir',
                                fontSize: 17,
                                color: Theme.of(context).primaryColorDark),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                                child: Text(
                              '۱۲۱',
                              style: TextStyle(
                                  fontFamily: 'Vazir', color: Colors.white),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32, top: 12),
                  child: Row(
                    children: [
                      Text(
                        'معدل کل:',
                        style: TextStyle(
                            fontFamily: 'Vazir',
                            fontSize: 17,
                            color: Theme.of(context).primaryColorDark),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          '۱۵/۶۲',
                          style: TextStyle(
                              fontFamily: 'Vazir',
                              color: Theme.of(context).cardColor),
                        )),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 32, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DropDown(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 10, 32, 70),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xffffb703)),
                          minimumSize: MaterialStateProperty.all(
                              Size(MediaQuery.of(context).size.width, 60))),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                          return const EntekhabVahed();
                        }));
                      },
                      child: Text(
                        'انتخاب واحد',
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
    );
  }
}

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final Map<String, Widget> _tables = {
    'ترم یک': Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(110),
      border: TableBorder.all(
          color: const Color(0xffffb703), style: BorderStyle.solid, width: 0.7),
      children: const [
        TableRow(children: [
          Column(
            children: [
              Text(
                'نام درس',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'تعداد واحد',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'نمره',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
        ]),
        TableRow(children: [
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          )
        ]),
      ],
    ),
    'ترم دو': Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(110),
      border: TableBorder.all(
          color: const Color(0xffffb703), style: BorderStyle.solid, width: 0.7),
      children: const [
        TableRow(children: [
          Column(
            children: [
              Text(
                'نام درس',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'تعداد واحد',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'نمره',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
        ]),
        TableRow(children: [
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          )
        ]),
      ],
    ),
    'ترم سه': Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(110),
      border: TableBorder.all(
          color: const Color(0xffffb703), style: BorderStyle.solid, width: 0.7),
      children: const [
        TableRow(children: [
          Column(
            children: [
              Text(
                'نام درس',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'تعداد واحد',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'نمره',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
        ]),
        TableRow(children: [
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          )
        ]),
      ],
    ),
    'ترم چهار': Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(110),
      border: TableBorder.all(
          color: const Color(0xffffb703), style: BorderStyle.solid, width: 0.7),
      children: const [
        TableRow(children: [
          Column(
            children: [
              Text(
                'نام درس',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'تعداد واحد',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'نمره',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
        ]),
        TableRow(children: [
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          )
        ]),
      ],
    ),
    'ترم پنج': Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(110),
      border: TableBorder.all(
          color: const Color(0xffffb703), style: BorderStyle.solid, width: 0.7),
      children: const [
        TableRow(children: [
          Column(
            children: [
              Text(
                'نام درس',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'تعداد واحد',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'نمره',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
        ]),
        TableRow(children: [
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          )
        ]),
      ],
    ),
    'ترم شش': Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(110),
      border: TableBorder.all(
          color: const Color(0xffffb703), style: BorderStyle.solid, width: 0.7),
      children: const [
        TableRow(children: [
          Column(
            children: [
              Text(
                'نام درس',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'تعداد واحد',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'نمره',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
        ]),
        TableRow(children: [
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          )
        ]),
      ],
    ),
    'ترم هفت': Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(110),
      border: TableBorder.all(
          color: const Color(0xffffb703), style: BorderStyle.solid, width: 0.7),
      children: const [
        TableRow(children: [
          Column(
            children: [
              Text(
                'نام درس',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'تعداد واحد',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'نمره',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
        ]),
        TableRow(children: [
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          )
        ]),
      ],
    ),
    'ترم هشت': Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(110),
      border: TableBorder.all(
          color: const Color(0xffffb703), style: BorderStyle.solid, width: 0.7),
      children: const [
        TableRow(children: [
          Column(
            children: [
              Text(
                'نام درس',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'تعداد واحد',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'نمره',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'vazir',
                    color: Color(0xffffb703)),
              ),
            ],
          ),
        ]),
        TableRow(children: [
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          ),
          Column(
            children: [Text('x')],
          )
        ]),
      ],
    ),
  };

  var dopDownValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: dopDownValue,
              hint: const Text('انتخاب نیمسال'),
              icon: const Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(CupertinoIcons.chevron_down),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dopDownValue = newValue!;
                });
              },
              items: _tables.keys.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                        fontFamily: 'Vazir',
                        color: Theme.of(context).primaryColorDark),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          if (dopDownValue != null) _tables[dopDownValue]!,
        ],
      ),
    );
  }
}
