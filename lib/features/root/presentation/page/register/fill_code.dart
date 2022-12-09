

import 'package:app_comet_hackathon/core/config/theme/color.dart';
import 'package:app_comet_hackathon/core/config/theme/text_config.dart';
import 'package:flutter/material.dart';
class CodeFillScreen extends StatelessWidget {
  const CodeFillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Register"),
      ),
      body: Column(
        children: [
          Text('Enter your company code',style: TextConfig.configText(fontsize: 13,fontWeight: FontWeight.bold,color:TextColor),),
          Text("we'll use this to sign up in your company!",style: TextConfig.configText(fontsize: 12,fontWeight: FontWeight.normal,color: TextColor.withOpacity(0.4)),),

        ],
      ),
    );
  }
}
