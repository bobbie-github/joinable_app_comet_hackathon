

import 'package:app_comet_hackathon/core/config/routes/router.dart';
import 'package:app_comet_hackathon/core/config/theme/color.dart';
import 'package:app_comet_hackathon/core/config/theme/text_config.dart';
import 'package:app_comet_hackathon/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:app_comet_hackathon/features/root/presentation/cubit/root_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/util/base/base_text_input.dart';
class CodeFillScreen extends StatefulWidget {
  const CodeFillScreen({Key? key}) : super(key: key);

  @override
  State<CodeFillScreen> createState() => _CodeFillScreenState();
}

class _CodeFillScreenState extends State<CodeFillScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validateLogin() {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
     print("post");
    } else {
      print('Form 2@@@@@@@');
    }
  }
  final codeEditingController = TextEditingController();


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
              'assets/svg/back.svg',
              color: WhiteColor,
            ),
          ),
        ),
        leadingWidth: 50,
        title: Text(
          'Code Company',
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
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Enter your code company",
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
                            SizedBox(height: 10,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0),
                                child: FormControllerBase(
                                  textEditingController: codeEditingController,
                                  labelText: 'Company code',
                                  hintText: '',
                                  validator: '',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            InkWell(
                              onTap: (){
                                context.read<AuthCubit>().getCode(codeEditingController.text);
                                // Navigator.pushNamed(context, AppRoute.createPasswordScreen);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0),
                                child: Container(
                                  padding: EdgeInsets.only(top: 9, bottom: 9),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue[700],
                                      border: Border.all(color: WhiteColor)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/svg/message.svg",
                                        width: 20,
                                        height: 20,
                                        color: WhiteColor,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Continue',
                                        style: TextConfig.configText(
                                            fontsize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: WhiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
