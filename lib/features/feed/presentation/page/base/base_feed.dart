


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/config/theme/color.dart';
import '../../../../../core/config/theme/text_config.dart';
class BaseFeedHead extends StatelessWidget {
  const BaseFeedHead({Key? key, required this.desc, required this.title, required this.status}) : super(key: key);
final String desc,title,status;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.45,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: GrayColor.withOpacity(0.3)),
          color: WhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,  style: TextConfig.configText(
                  color: TextColor,
                  fontsize: 12,
                  fontWeight: FontWeight.bold),),
              Text(status,style: TextConfig.configText(
                  color: TextColor.withOpacity(0.4),
                  fontsize: 10,
                  fontWeight: FontWeight.normal),),
            ],
          ),
          Text(desc,style: TextConfig.configText(
              color: TextColor.withOpacity(0.4),
              fontsize: 10,
              fontWeight: FontWeight.normal),)
        ],
      ),
    );
  }
}

class BaseFeedBody extends StatelessWidget {
  const BaseFeedBody(
      {Key? key,
        required this.img,
        required this.name,
        required this.time,
        required this.icon,
        required this.user, required this.desc})
      : super(key: key);

  final String img, name, time, icon, user,desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: TextColor.withOpacity(0.2)),
          color: WhiteColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
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
                mainAxisAlignment: MainAxisAlignment.start,
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
          Text(desc,style: TextConfig.configText(
              color: TextColor.withOpacity(0.6),
              fontsize: 12,
              fontWeight: FontWeight.normal),),
          // Container(
          //   width: 40,
          //   child: Align(
          //     child: Stack(
          //       alignment: AlignmentDirectional.bottomCenter ,
          //       children: [
          //         Positioned(
          //           right: 0,
          //
          //           child: GestureDetector(
          //             onTap: () async {},
          //             child: Padding(
          //                 padding: EdgeInsets.all(5),
          //                 child: CircleAvatar(
          //                   radius: 12,
          //                   backgroundColor: WhiteColor,
          //                   child: ClipOval(
          //                     child: Image.asset(
          //                       img,
          //                       fit: BoxFit.cover,
          //                       width: 25,
          //                       height: 25,
          //                     ),
          //                   ),
          //                 )),
          //           ),
          //         ),
          //         Positioned(
          //           right: 6,
          //           child: GestureDetector(
          //             onTap: () async {},
          //             child: Padding(
          //                 padding: EdgeInsets.all(5),
          //                 child: CircleAvatar(
          //                   radius: 12,
          //                   backgroundColor: WhiteColor,
          //                   child: ClipOval(
          //                     child: Image.asset(
          //                       img,
          //                       fit: BoxFit.cover,
          //                       width: 25,
          //                       height: 25,
          //                     ),
          //                   ),
          //                 )),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     SvgPicture.asset(
          //       'assets/svg/next.svg',
          //       width: 25,
          //       height: 25,
          //       color: PrimaryColor,
          //     ),
          //     Text(
          //       '...3 more',
          //       style: TextConfig.configText(
          //           color: PrimaryColor,
          //           fontsize: 12,
          //           fontWeight: FontWeight.normal),
          //     ),
          //   ],
          // ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}