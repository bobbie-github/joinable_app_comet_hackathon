


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/theme/color.dart';
import '../../config/theme/text_config.dart';

class MessageErrorContainer extends StatelessWidget {
  const MessageErrorContainer({Key? key, required this.message}) : super(key: key);
final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: RedColor)
      ),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/svg/fail.svg',width: 20,height: 20,color: RedColor,),
              SizedBox(width: 10,),
              Expanded(child: Text(message,style: TextConfig.configText(fontsize: 13,fontWeight: FontWeight.normal),))
            ],
          ),
        ],
      ),
    );
  }
}
