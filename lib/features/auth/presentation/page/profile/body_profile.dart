
import 'package:app_comet_hackathon/features/home/presentation/page/base/base_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../core/config/theme/color.dart';
import '../base/base.dart';


class BaseProfile extends StatefulWidget {
  const BaseProfile({Key? key}) : super(key: key);

  @override
  State<BaseProfile> createState() => _BaseProfileState();
}

class _BaseProfileState extends State<BaseProfile> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);
  void _onLoading() async {
    print('onloading');

  }

  void _onRefresh() async {

    _refreshController.refreshCompleted();
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
                    height: 180,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () async {},
                          child: Container(
                            width: size.width*0.5,
                            child: Padding(
                                padding: EdgeInsets.all(5),
                                child: CircleAvatar(
                                  radius: 80,
                                  backgroundColor: RedColor,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/devhub.jpg',
                                      fit: BoxFit.cover,
                                      width: 160,
                                      height: 160,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BaseProfileInfo(title: 'Name',),
                            BaseProfileInfo(title: 'Gender',),
                            BaseProfileInfo(title: 'Carreer',),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text('Activity'),
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 30,itemBuilder: (_,index){
                      return BaseProfileActivity(title: 'Single',);
                    }),
                  ),
                  SizedBox(height: 10,),
                  Text('Joined At 05 Aug 2020'),
                  SizedBox(height: 10,),

                  Wrap(
                    children: List.generate(20, (index) => BasePost(                      img: 'assets/devhub.jpg',
                      name: "Daungvilay Manykingkeo",
                      time: '17:30',
                      icon: 'assets/svg/edit-profile.svg',
                      user: 'bobbie',)),
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
