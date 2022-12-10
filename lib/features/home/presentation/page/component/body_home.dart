

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../core/config/theme/color.dart';

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
    return SafeArea(
      child: Container(
        // color: WhiteColor,
        color: Color(0xFFF0F0F0),
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
            child:  ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                Text("center"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
