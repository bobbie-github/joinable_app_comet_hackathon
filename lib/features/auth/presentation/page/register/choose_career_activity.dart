import 'package:app_comet_hackathon/core/config/routes/router.dart';
import 'package:app_comet_hackathon/core/config/theme/color.dart';
import 'package:app_comet_hackathon/core/config/theme/text_config.dart';
import 'package:app_comet_hackathon/features/root/presentation/cubit/root_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/util/base/base_text_input.dart';

class ChooseCareerAndActivity extends StatefulWidget {
  const ChooseCareerAndActivity({Key? key}) : super(key: key);

  @override
  State<ChooseCareerAndActivity> createState() =>
      _ChooseCareerAndActivityScreenState();
}

class _ChooseCareerAndActivityScreenState
    extends State<ChooseCareerAndActivity> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validateLogin() {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
      print("post");
    } else {
      print('Form 2@@@@@@@');
    }
  }

  final textEditingController = TextEditingController();

  List<Map<String,dynamic>> career = [
    {"name":"Computer","active":0},
    {"name":"Game","active":0},
    {"name":"Travel","active":0},
    {"name":"Sleep","active":0},
    {"name":"Phone","active":0},
    {"name":"Beer","active":0},
    {"name":"Computer","active":0},
    {"name":"Computer","active":0},
    {"name":"Game","active":0},
    {"name":"Travel","active":0},
    {"name":"Sleep","active":0},
    {"name":"Phone","active":0},
    {"name":"Beer","active":0},
    {"name":"Computer","active":0},
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
        title: const Text(
          'Career & Activity',
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
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: ListView.builder(
                                itemCount: career.length,
                                itemBuilder: (_, index) {
                                  return InkWell(
                                    onTap: () {
                                      if(career[index]['active'] == 1){
                                        setState(()=>career[index]['active'] = 0);
                                      }else{
                                        setState(()=>career[index]['active'] = 1);
                                      }

                                    },
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.only(
                                          top: 3, bottom: 3),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 0),
                                      constraints: BoxConstraints(
                                        minWidth: 70,
                                      ),
                                      decoration: BoxDecoration(
                                        color:career[index]['active']==1?greenColor.withOpacity(0.05): WhiteColor,
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(color: career[index]['active']==1?greenColor: GrayColor.withOpacity(0.5)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(career[index]['name']),
                                          if(career[index]['active']==1)
                                          Container(
                                            width:20,
                                            height: 20,
                                            child: SvgPicture.asset('assets/svg/check.svg',color: greenColor,),
                                          )
                                          
                                          
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, AppRoute.createPasswordScreen);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              child: Container(
                                padding: EdgeInsets.only(top: 9, bottom: 9),
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue[700],
                                  border: Border.all(color: WhiteColor),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Continue Create',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
