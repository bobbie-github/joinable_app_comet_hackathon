
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../../core/config/theme/color.dart';
import '../../../../../../core/util/base/base_text_input.dart';
import '../../../../../feed/presentation/page/base/base_feed.dart';

class BodyFaq extends StatefulWidget {
  const BodyFaq({Key? key}) : super(key: key);

  @override
  State<BodyFaq> createState() => _BodyFaqState();
}

class _BodyFaqState extends State<BodyFaq> {
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

  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaseFeedHead(desc: 'Captured Russian documents recently leaked by a British defense',title: 'Please clean',status: 'really bad',),
                      BaseFeedHead(desc: 'Captured Russian documents recently leaked by a British defense',title: 'Please clean',status: 'really bad',),
                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: FormControllerBase(
                        textEditingController: textEditingController,
                        labelText: '',
                        hintText: 'Search..',
                        validator: '',
                      ),
                    ),
                  ),
                 Wrap(
                   children: List.generate(30, (index) =>  BaseFeedBody(
                     img: 'assets/devhub.jpg',
                     name: "Daungvilay Manykingkeo",
                     time: '17:30',
                     icon: 'assets/svg/edit-profile.svg',
                     user: 'bobbie',
                     desc: 'Captured Russian documents recently leaked by a British defense',
                   ),),
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
