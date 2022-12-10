
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
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
          ),
          title: const Text('Page 1'),
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
