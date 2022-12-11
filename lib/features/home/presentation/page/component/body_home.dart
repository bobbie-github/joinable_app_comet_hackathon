

import 'package:app_comet_hackathon/core/config/routes/router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../core/config/theme/color.dart';
import '../../../../../core/config/theme/text_config.dart';
import '../base/base_home.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}


class _BodyHomeState extends State<BodyHome> {

  final RefreshController _refreshController = RefreshController(initialRefresh: false);
  void _onLoading() async {
    print('onloading');

  }

  void _onRefresh() async {

    _refreshController.refreshCompleted();
  }
  getToken()async{
    FirebaseMessaging messaging  = FirebaseMessaging.instance;
    String ? token = await messaging.getToken();
    print("token messaging: $token");
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //lock screen rotation
    SystemChrome.setPreferredOrientations([
      //@@@@ desc we can lock screen up only
      DeviceOrientation.portraitUp,
      // DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final size  =MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        color: WhiteColor,
        // color: backGroundColor,
        height: MediaQuery.of(context).size.height,
        child: SmartRefresher(
          enablePullDown: true,
          controller: _refreshController,
          onLoading: _onLoading,
          onRefresh: _onRefresh,
          header: MaterialClassicHeader(
            color: PrimaryColor,
          ),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: [
                  Container(
                    height: size.height * 0.2,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    decoration: BoxDecoration(
                      color: PrimaryColor,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello new user",style: TextConfig.configText(color: WhiteColor,fontsize: 14,fontWeight: FontWeight.normal),),
                            Text("Welcome to Haltech",style: TextConfig.configText(color: WhiteColor,fontsize: 18,fontWeight: FontWeight.normal),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                Navigator.pushNamed(context, AppRoute.profileScreen);
                              },
                              child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: CircleAvatar(
                                    radius: 31,
                                    backgroundColor: WhiteColor,
                                    child: ClipOval(
                                      child: Image.asset(
                                        'assets/devhub.jpg',
                                        fit: BoxFit.cover,
                                        width: 60,
                                        height: 60,
                                      ),
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0),
                              child: InkWell(
                                onTap: (){
                                  getToken();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                      // color: Colors.lightBlue[700],
                                      border: Border.all(color: WhiteColor)),
                                  child:Text(
                                    'Take a tour',
                                    style: TextConfig.configText(
                                        fontsize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: WhiteColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('Your friends'),
                  Container(
                    height: 70,
                    child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 20,itemBuilder: (_,index){
                      return BaseFriend(
                        img: 'assets/devhub.jpg',
                        name: "Daungvilay Manykingkeo",
                        des: "tech lead",
                      );
                    }),
                  ),
                  SizedBox(height: 15,),
                  Text('Rencent Activity'),
                  Container(
                    height: 70,
                    child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 20,itemBuilder: (_,index){
                      return BaseActivity(
                        img: 'assets/devhub.jpg',
                        name: "Daungvilay Manykingkeo",
                        des: "tech lead",
                        time: '17:30',
                        icon: 'assets/svg/edit-profile.svg',
                        color: RedColor,
                        user: 'bobbie',
                      );
                    }),
                  ),

                  SizedBox(height: 15,),
                  Text('Post'),
                  Container(
                    height:size.height *0.5,
                    child:Wrap(
                      children: List.generate(15, (index) => BasePost(
                        img: 'assets/devhub.jpg',
                        name: "Daungvilay Manykingkeo",
                        time: '17:30',
                        icon: 'assets/svg/edit-profile.svg',
                        user: 'bobbie',
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
