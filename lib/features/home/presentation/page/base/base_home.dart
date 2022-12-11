import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/config/theme/color.dart';
import '../../../../../core/config/theme/text_config.dart';

class BaseFriend extends StatelessWidget {
  const BaseFriend(
      {Key? key,
       this.img,
      required this.name,
      required this.des,
      this.activity,
      this.career})
      : super(key: key);

  final img, name, des;
  final activity;
  final career;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: GrayColor.withOpacity(0.3)),
          color: WhiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [

              if(img !=null)
              GestureDetector(
                onTap: () async {},
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: WhiteColor,
                      child: ClipOval(
                        child: Image.network(
                          img,
                          fit: BoxFit.cover,
                          width: 46,
                          height: 46,
                        ),
                      ),
                    )),
              ),
              if(img==null)
              GestureDetector(
                onTap: () async {},
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: WhiteColor,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/devhub.jpg',
                          fit: BoxFit.cover,
                          width: 46,
                          height: 46,
                        ),
                      ),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextConfig.configText(
                        color: TextColor,
                        fontsize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    des,
                    style: TextConfig.configText(
                        color: TextColor.withOpacity(0.4),
                        fontsize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/activity-svgrepo-com.svg',
                width: 15,
                height: 15,
                color: PrimaryColor,
              ),
              SizedBox(
                height: 5,
              ),
              SvgPicture.asset(
                'assets/svg/bz-career-36-o.svg',
                width: 15,
                height: 15,
                color: warningColor,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class BaseActivity extends StatelessWidget {
  const BaseActivity(
      {Key? key,
      required this.img,
      required this.name,
      required this.des,
      this.activity,
      this.career,
      required this.time,
      required this.icon,
      required this.color,
      required this.user})
      : super(key: key);

  final String img, name, des, time, icon, user;
  final activity;
  final career;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color.withOpacity(0.3)),
          color: WhiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      time,
                      style: TextConfig.configText(
                          color: WhiteColor,
                          fontsize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      'Join',
                      style: TextConfig.configText(
                          color: WhiteColor,
                          fontsize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        icon,
                        width: 18,
                        height: 18,
                        color: color,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        name,
                        style: TextConfig.configText(
                            color: TextColor,
                            fontsize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                        'assets/svg/calendar_1.svg',
                        width: 14,
                        height: 14,
                        color: TextColor.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        des,
                        style: TextConfig.configText(
                            color: TextColor.withOpacity(0.4),
                            fontsize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(
                        'assets/svg/user.svg',
                        width: 14,
                        height: 14,
                        color: TextColor.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        user,
                        style: TextConfig.configText(
                            color: TextColor.withOpacity(0.4),
                            fontsize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            'assets/svg/next.svg',
            width: 30,
            height: 30,
            color: color,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class BasePost extends StatelessWidget {
  const BasePost(
      {Key? key,
      required this.img,
      required this.name,
      required this.time,
      required this.icon,
      required this.user})
      : super(key: key);

  final String img, name, time, icon, user;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: TextColor.withOpacity(0.2)),
          color: WhiteColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                // decoration: BoxDecoration(
                //   color: color,
                //   borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                // ),
                child: SvgPicture.asset(
                  icon,
                  width: 35,
                  height: 35,
                  color: TextColor.withOpacity(0.4),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        name,
                        style: TextConfig.configText(
                            color: TextColor,
                            fontsize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                        'assets/svg/calendar_1.svg',
                        width: 14,
                        height: 14,
                        color: TextColor.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        time,
                        style: TextConfig.configText(
                            color: TextColor.withOpacity(0.4),
                            fontsize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(

            width: 40,
            child: Align(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter ,
                children: [
                  Positioned(
                    right: 0,

                    child: GestureDetector(
                      onTap: () async {},
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: WhiteColor,
                            child: ClipOval(
                              child: Image.asset(
                                img,
                                fit: BoxFit.cover,
                                width: 25,
                                height: 25,
                              ),
                            ),
                          )),
                    ),
                  ),
                  Positioned(
                    right: 6,
                    child: GestureDetector(
                      onTap: () async {},
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: WhiteColor,
                            child: ClipOval(
                              child: Image.asset(
                                img,
                                fit: BoxFit.cover,
                                width: 25,
                                height: 25,
                              ),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/next.svg',
                width: 25,
                height: 25,
                color: PrimaryColor,
              ),
              Text(
                '...3 more',
                style: TextConfig.configText(
                    color: PrimaryColor,
                    fontsize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
