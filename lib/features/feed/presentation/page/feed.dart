import 'package:flutter/material.dart';

import '../../../../core/config/theme/color.dart';
import '../../../../core/config/theme/text_config.dart';
import 'component/body_feed.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WhiteColor,
        elevation: 0.2,
        centerTitle: false,
        titleSpacing: 0,
        toolbarHeight: 30,
        leadingWidth: MediaQuery.of(context).size.width *0.45,
        leading: Container(
          padding: EdgeInsets.only(left: 7),
          child: Text('Feedback',style: TextConfig.configText(fontsize: 16,fontWeight: FontWeight.bold)),
        ),
        actions: [
        ],
      ),
      body: BaseFeed(),
    );
  }
}
