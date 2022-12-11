



import 'package:awesome_notifications/awesome_notifications.dart';

import '../config/theme/color.dart';

class NotificationService{
  static Future<void>  initialedNotificationService()async {
    AwesomeNotifications().initialize(
      '',
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Alerts',
          channelDescription: 'Notification tests as alerts',
          defaultColor:PrimaryColor,
          enableLights: false,
          enableVibration: false,
          importance: NotificationImportance.Max,
          ledColor: PrimaryColor,
          channelShowBadge: true,
          locked: true,
          playSound: true,
          // icon:'resource://@mipmap/ic_launcher'
        )
      ],
      debug: true,
    );
  }

static Future<void> createBaseNotification({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) async {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: id,
        channelKey: 'basic_channel', //set configuration with key "basic"
        title: title,
        body: body,
        payload:{"my_payload":payload},
        autoDismissible: true,
      ),
      // actionButtons: [
      //   NotificationActionButton(
      //     key: "open",
      //     label: "Open File",
      //   ),
      //
      //   NotificationActionButton(
      //     key: "delete",
      //     label: "Delete File",
      //   )
      // ]
    );
  }

}