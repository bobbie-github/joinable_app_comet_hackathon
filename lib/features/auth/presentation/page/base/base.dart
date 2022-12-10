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
