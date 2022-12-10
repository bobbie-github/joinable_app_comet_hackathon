

import 'package:app_comet_hackathon/core/config/theme/color.dart';
import 'package:app_comet_hackathon/core/config/theme/text_config.dart';
import 'package:app_comet_hackathon/features/root/presentation/cubit/root_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/config/routes/router.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenScreenState();
}

class _AuthScreenScreenState extends State<AuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validateLogin() {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
     print("post");
    } else {
      print('Form 2@@@@@@@');
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'assets/svg/fail_2.svg',
              color: WhiteColor,
            ),
          ),
        ),
        leadingWidth: 50,
        title: Text(
          'Devhub',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: PrimaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: WhiteColor,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: ListView(
              children: [
                SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.85,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Let's get Started",
                                  style: TextConfig.configText(
                                      fontsize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Sign in to see deal up to 50%, easily manage your current bookings,and so much here...",
                                  style: TextConfig.configText(
                                      fontsize: 12, fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, AppRoute.loginScreen);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 7, bottom: 7),
                                    decoration: BoxDecoration(
                                        color: Colors.lightBlue[700],
                                        border: Border.all(color: WhiteColor)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Continue with Login',
                                          style: TextConfig.configText(
                                              fontsize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: WhiteColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, AppRoute.fillCheckCodeRoute);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 7, bottom: 7),
                                    decoration: BoxDecoration(
                                      // color: Colors.lightBlue[700],
                                        border: Border.all(color: PrimaryColor)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/svg/call.svg",
                                          width: 20,
                                          height: 20,
                                          color: PrimaryColor,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Continue with Sign up',
                                          style: TextConfig.configText(
                                              fontsize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: PrimaryColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: (){

                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'By signing in or creating an account, you agree with our',
                                    style: TextConfig.configText(
                                        fontsize: 12, fontWeight: FontWeight.normal),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Terms & Conditons',
                                        style: TextConfig.configText(
                                            fontsize: 12, fontWeight: FontWeight.bold,color: PrimaryColor),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'and',
                                        style: TextConfig.configText(
                                            fontsize: 12, fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Privacy Statement',
                                        style: TextConfig.configText(
                                            fontsize: 12, fontWeight: FontWeight.bold,color: PrimaryColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
