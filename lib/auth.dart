import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniapp/home.dart';
import 'package:uniapp/main.dart';

import 'gen/assets.gen.dart';

//screen UI starts here
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _obsecure = true;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _showSnackbar(BuildContext context, String messag) {
    final snackBar = SnackBar(
      content: Text(messag),
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _validateInputs(){
    final username = _usernameController.text;
    final password = _passwordController.text;

    if(password != '123456789' || username != '991830245'){
      _showSnackbar(context, 'نام کاربری یا رمز عبور نادرست است!');
    }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
        return const MainScreen();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
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
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'ورود',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: Theme.of(context).cardColor,
                                      fontSize: 18),
                            ),
                            Text(
                              'ورود از طریق دولت من',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: Theme.of(context).cardColor,
                                      fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(32),
                                topLeft: Radius.circular(32))),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 50, 40, 0),
                                child: Text(
                                  'خوش اومدی!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontSize: 22,
                                          color:
                                              Theme.of(context).primaryColor),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 0),
                                child: Text(
                                  'با شماره دانشجویی و رمز عبور خود وارد شوید',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .primaryColorDark),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(40, 5, 40, 0),
                                child: TextField(
                                  controller: _usernameController,
                                  decoration: const InputDecoration(
                                      label: Text(
                                    'شماره دانشجویی',
                                    style: TextStyle(
                                      fontFamily: 'Vazir',
                                    ),
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 5, 40, 0),
                                child: TextField(
                                  controller: _passwordController,
                                  obscureText: _obsecure,
                                  autocorrect: false,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      suffixIcon: TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _obsecure = !_obsecure;
                                            });
                                          },
                                          child: _obsecure
                                              ? const Icon(
                                                  CupertinoIcons.eye_slash)
                                              : const Icon(CupertinoIcons.eye)),
                                      label: const Text(
                                        'رمز عبور',
                                        style: TextStyle(
                                          fontFamily: 'Vazir',
                                        ),
                                      )),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 35, 40, 20),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14))),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color(0xffffb703)),
                                        minimumSize: MaterialStateProperty.all(
                                            Size(
                                                MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                60))),
                                    onPressed: _validateInputs,
                                    child: Text(
                                      'ورود',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color:
                                                  Theme.of(context).cardColor,
                                              fontSize: 18),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  void dispose(){
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
