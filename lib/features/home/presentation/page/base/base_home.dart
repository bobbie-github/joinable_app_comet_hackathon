
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/config/theme/color.dart';
import '../../../../../core/config/theme/text_config.dart';


class BaseFriend extends StatelessWidget {
  const BaseFriend({Key? key, required this.img, required this.name,  required this.des, this.activity, this.career}) : super(key: key);

  final String img,name,des;
  final activity;
  final career;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:GrayColor.withOpacity(0.3)),
          color: WhiteColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () async {
                },
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: WhiteColor,
                      child: ClipOval(
                        child: Image.asset(
                          img,
                          fit: BoxFit.cover,
                          width: 46,
                          height: 46,
                        ),
                      ),
                    )
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextConfig.configText(color: TextColor,fontsize: 14,fontWeight: FontWeight.normal),),
                  Text(des,style: TextConfig.configText(color: TextColor.withOpacity(0.4),fontsize: 12,fontWeight: FontWeight.normal),),
                ],
              ),
            ],
          ),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/activity-svgrepo-com.svg',width: 15,height: 15,color: PrimaryColor,),
              SizedBox(height: 5,),
              SvgPicture.asset('assets/svg/bz-career-36-o.svg',width: 15,height: 15,color: warningColor,),

            ],
          ),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
class BaseActivity extends StatelessWidget {
  const BaseActivity({Key? key, required this.img, required this.name,  required this.des, this.activity, this.career, required this.time, required this.icon}) : super(key: key);

  final String img,name,des,time,icon;
  final activity;
  final career;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      // padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:GrayColor.withOpacity(0.3)),
          color: WhiteColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                decoration: BoxDecoration(
                  color: PrimaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(time,style: TextConfig.configText(color: WhiteColor,fontsize: 12,fontWeight: FontWeight.normal),),
                    Text('Join',style: TextConfig.configText(color: WhiteColor,fontsize: 12,fontWeight: FontWeight.normal),),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextConfig.configText(color: TextColor,fontsize: 14,fontWeight: FontWeight.normal),),
                  Text(des,style: TextConfig.configText(color: TextColor.withOpacity(0.4),fontsize: 12,fontWeight: FontWeight.normal),),
                ],
              ),
            ],
          ),
          SizedBox(width: 10,),
          SvgPicture.asset(''),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
