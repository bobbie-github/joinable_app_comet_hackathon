import 'package:flutter/material.dart';

import '../../../../../core/config/theme/color.dart';
class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key, this.onTap}) : super(key: key);
  final onTap;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: 90,
          height: 90,
          // margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
                color: backgroundProfile),
            borderRadius:
            BorderRadius.circular(60),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/devhub.jpg'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: backgroundProfile,
                borderRadius:
                BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.camera_alt,
                size: 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}



class BaseProfileInfo extends StatelessWidget {
  const BaseProfileInfo({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.45,
      height: 40,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: TextColor.withOpacity(0.2)),
          color: WhiteColor),
      child: Align(alignment: Alignment.centerLeft,child: Text('Name')),
    );
  }
}

class BaseProfileActivity extends StatelessWidget {
  const BaseProfileActivity({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: PrimaryColor),
          color: PrimaryColor.withOpacity(0.01)),
      child: Align(alignment: Alignment.centerLeft,child: Text(title)),
    );
  }
}

