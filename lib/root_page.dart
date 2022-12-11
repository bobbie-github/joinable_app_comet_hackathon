
import 'package:app_comet_hackathon/features/companyprofile/presentation/page/companyprofile.dart';
import 'package:app_comet_hackathon/features/employee/presentation/page/employee.dart';
import 'package:app_comet_hackathon/features/faq/presentation/page/faq.dart';
import 'package:app_comet_hackathon/features/feeback/presentation/page/feedback.dart';
import 'package:app_comet_hackathon/features/feeback/presentation/page/feedbackCreate.dart';
import 'package:app_comet_hackathon/features/profile/presentation/page/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'core/config/routes/router.dart';
import 'core/config/theme/color.dart';
import 'features/feed/presentation/page/feed.dart';
import 'features/home/presentation/page/home.dart';



class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);
  @override
  State<RootPage> createState() => _RootPageAppState();
}
class _RootPageAppState extends State<RootPage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // return  BlocBuilder(builder: (_,index) {
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.3))
          ],
        ),
        child: Scaffold(
          // backgroundColor: controller.indexTab == 3 ? PrimaryColor : null,
          body: SafeArea(
            child: IndexedStack(
              // index: controller.indexTab,
              children:const [
                // HomePage(),
                // Feed(),
                // MessageScreen(),
                ProfilePage(),
                // EmployeePage(),
                // CompanyProfilePage(),
                // FeedbackPage(),
                // FAQPage(),
                // FeedbackCreatePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey[400],
            selectedItemColor: PrimaryColor,
            // onTap: controller.OnchangeTableIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            // currentIndex: controller.indexTab,
            type: BottomNavigationBarType.fixed,
            backgroundColor: WhiteColor,
            selectedLabelStyle: TextStyle(fontSize: 9),
            unselectedLabelStyle: TextStyle(fontSize: 9),
            elevation: 6,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/home.svg',
                  width: 20,
                  height: 20,
                  // color: controller.indexTab == 0
                  //     ? PrimaryColor
                  //     : Colors.grey[400],
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/user.svg',
                  width: 20,
                  height: 20,
                  // color: controller.indexTab == 1
                  //     ? PrimaryColor
                  //     : Colors.grey[400],
                ),
                label: 'sv_contact',
              ),
              // BottomNavigationBarItem(
              //   icon: notificationController.notificationCounter.value !=0
              //       ? Badge(
              //     badgeContent: Text(
              //       '${notificationController.notificationCounter.value}',
              //       style: TextStyle(color: WhiteColor),
              //     ),
              //     child: SvgPicture.asset(
              //       'assets/svg/message.svg',
              //       width: 20,
              //       height: 20,
              //       color: controller.indexTab == 2
              //           ? PrimaryColor
              //           : Colors.grey[400],
              //     ),
              //   )
              //       : SvgPicture.asset(
              //     'assets/svg/Notification.svg',
              //     width: 20,
              //     height: 20,
              //     // color: controller.indexTab == 2
              //     //     ? PrimaryColor
              //     //     : Colors.grey[400],
              //   ),
              //   label: 'nav_notification',
              // ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/list.svg',
                  width: 20,
                  height: 20,
                  // color: controller.indexTab == 3
                  //     ? PrimaryColor
                  //     : Colors.grey[400],
                ),
                label: 'nav_setting',
              ),
            ],
          ),
        ),
      );
    // },);



  }
}

