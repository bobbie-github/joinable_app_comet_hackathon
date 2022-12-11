import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/config/theme/color.dart';
import '../../../../../core/config/theme/text_config.dart';
import 'component/body_faq.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WhiteColor,
        elevation: 0.5,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              'assets/svg/back.svg',
              color: PrimaryColor,
            ),
          ),
        ),
        leadingWidth: 50,
        title: const Text(
          'FAQ',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: TextColor),
        ),
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: BodyFaq(),
    );
  }
}
