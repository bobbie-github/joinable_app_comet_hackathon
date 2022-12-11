
import 'package:app_comet_hackathon/core/config/routes/router.dart';
import 'package:app_comet_hackathon/core/config/theme/text_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/config/theme/color.dart';
import 'component/body_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_key ,
      // backgroundColor: PrimaryColor,
      appBar: AppBar(
        // bottom: PreferredSize(
        //   child: Container(
        //     color: kSecondaryColor.withOpacity(0.4),
        //     height: 1.0,
        //   ),
        //   preferredSize: Size.fromHeight(1.0),
        // ),
        backgroundColor: WhiteColor,
        elevation: 0.2,
        centerTitle: false,
        titleSpacing: 0,
        leadingWidth: MediaQuery.of(context).size.width *0.85,
        leading: Container(
          padding: EdgeInsets.only(left: 7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome back,',style: TextConfig.configText(fontsize: 12,color: TextColor.withOpacity(0.4)),),
              Text('Bobbie Manykingkeo',style: TextConfig.configText(fontsize: 16,fontWeight: FontWeight.normal)),
            ],
          ),
        ),
        actions: [

          GestureDetector(
            onTap: () async {
              _key.currentState!.openDrawer();
            },
            child: Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: WhiteColor,
                child: ClipOval(
                  child: Image.asset(
                    'assets/devhub.jpg',
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                ),
              )
            ),
          ),
        ],
      ),
      body: BodyHome(),
      drawer:  Drawer(
        width: 250,
        backgroundColor: WhiteColor,
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.only(left: 10),
      children: [
         DrawerHeader(
          decoration: BoxDecoration(
            color: WhiteColor,
          ),
          child:    Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  Navigator.pushNamed(context, AppRoute.profileScreen);
                },
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      radius: 31,
                      backgroundColor: WhiteColor,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/devhub.jpg',
                          fit: BoxFit.cover,
                          width: 60,
                          height: 60,
                        ),
                      ),
                    )
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'Haltech',
                style: TextConfig.configText(
                    color: TextColor,
                    fontsize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Houng Ah Loun Technology',
                style: TextConfig.configText(
                    color: TextColor.withOpacity(0.4),
                    fontsize: 12,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        ListTile(
          leading:SvgPicture.asset('assets/svg/language.svg',width: 20,height: 20,),
          minLeadingWidth: 10,
          title: const Text('FAQ'),
          onTap: () {
            Navigator.pushNamed(context, AppRoute.faqScreen);
          },
        ),
        ListTile(
          leading:SvgPicture.asset('assets/svg/user.svg',width: 20,height: 20,),
          minLeadingWidth: 10,
          title: const Text('employee'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.train,
          ),
          title: const Text('Page 2'),
          onTap: () {
           Navigator.pushNamed(context, AppRoute.authScreen);
          },
        ),
      ],
    ),
    ),
    );
  }
}
