

import 'package:app_comet_hackathon/core/config/theme/color.dart';
import 'package:app_comet_hackathon/core/config/theme/text_config.dart';
import 'package:app_comet_hackathon/features/root/presentation/cubit/root_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/config/routes/router.dart';
import '../../../../../core/util/base/base_text_input.dart';
class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordScreenState();
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(this);
  }
}
class _CreatePasswordScreenState extends State<CreatePassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final emailEditingController = TextEditingController();
  late bool passwordVisibility = false;
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
                              "Create a password",
                              style: TextConfig.configText(
                                  fontsize: 20, fontWeight: FontWeight.bold),
                            ),
                          const  SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Use a minimum of 10 characters, including uppercase letters, lowercase letters,and numbers",
                              style: TextConfig.configText(
                                  fontsize: 12, fontWeight: FontWeight.normal,color: TextColor.withOpacity(0.5)),
                            ),
                           const SizedBox(
                              height: 5,
                            ),
                          const  SizedBox(height: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            const    SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 0),
                                    child: FormControllerBase(
                                      textEditingController: emailEditingController,
                                      labelText: 'Email',
                                      hintText: '',
                                      validator: '',
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Password',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                TextFormField(
                                  controller: passwordController,
                                  obscureText: !passwordVisibility,
                                  validator:(input){
                                    if(PasswordValidator(input.toString()).isValidPassword()){
                                      print("value");
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: null,
                                    isDense: true,
                                    hintText: null,

                                    hintStyle: TextStyle(fontSize: 14),
                                    labelStyle: TextStyle(fontSize: 14),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: RedColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: RedColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(2),

                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    suffixIcon: GestureDetector(
                                      onTap: () => setState(
                                            () => passwordVisibility =
                                        !passwordVisibility,
                                      ),
                                      child: Icon(
                                        passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0xFF95A1AC),
                                        size: 17,
                                      ),
                                    ),
                                    contentPadding:const EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
                                    suffixIconConstraints:
                                    const BoxConstraints(
                                        minHeight: 40, minWidth: 40),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                TextFormField(
                                  controller: passwordController,
                                  obscureText: !passwordVisibility,
                                  validator:(input){
                                    if(PasswordValidator(input.toString()).isValidPassword()){
                                      print("value");
                                    }
                                  },
                                  decoration: InputDecoration(
                                    labelText: null,
                                    isDense: true,
                                    hintText: null,

                                    hintStyle: TextStyle(fontSize: 14),
                                    labelStyle: TextStyle(fontSize: 14),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFDBE2E7),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: RedColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: RedColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(2),

                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    suffixIcon: GestureDetector(
                                      onTap: () => setState(
                                            () => passwordVisibility =
                                        !passwordVisibility,
                                      ),
                                      child: Icon(
                                        passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0xFF95A1AC),
                                        size: 17,
                                      ),
                                    ),
                                    contentPadding:const EdgeInsets.symmetric(vertical: 7.0, horizontal: 7.0),
                                    suffixIconConstraints:
                                    const BoxConstraints(
                                        minHeight: 40, minWidth: 40),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            InkWell(
                              onTap: (){
                                print("hello word");
                                Navigator.pushNamed(context, AppRoute.createInfoUserScreen);
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
