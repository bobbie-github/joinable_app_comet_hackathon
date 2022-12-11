import 'dart:io';
import 'package:awesome_notifications/awesome_notifications.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HandlerPermission {
  HandlerPermission();

  static void handlerPermissionNotification() async {
    final serviceStatus = await Permission.notification.request();
    if (Platform.isAndroid) {
      if (serviceStatus == PermissionStatus.granted) {
        FirebaseMessaging messaging = FirebaseMessaging.instance;
        String? token = await messaging.getToken();
        print("token messaging: $token");
      } else if (serviceStatus == PermissionStatus.denied) {
        print("PermissionStatus.denied");
        await Permission.notification.request();
        AlertDialog(
          title: Text("Allow app to setting Notification ? "),
          actions: [
            ElevatedButton(                     // FlatButton widget is used to make a text to work like a button
              onPressed: () {},             // function used to perform after pressing the button
              child: Text('CANCEL'),
            ),
            ElevatedButton(
              onPressed: () {
                AwesomeNotifications().requestPermissionToSendNotifications();
              },
              child: Text('ACCEPT'),
            ),
          ],
        );
      } else if (serviceStatus == PermissionStatus.permanentlyDenied) {
        AlertDialog(
          title: Text("Allow app to setting Notification ? "),
          actions: [
            ElevatedButton(                     // FlatButton widget is used to make a text to work like a button
              onPressed: () {},             // function used to perform after pressing the button
              child: Text('CANCEL'),
            ),
            ElevatedButton(
              onPressed: () {
                AwesomeNotifications().requestPermissionToSendNotifications();
              },
              child: Text('ACCEPT'),
            ),
          ],
        );
      }
    }
  }
}