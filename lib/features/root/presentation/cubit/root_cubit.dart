import 'dart:convert';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/config/theme/color.dart';
import '../../../../core/util/notification_service.dart';

part 'root_state.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootInitial());

  Future<void> onChangeTap(int index)async {
      emit(IndexTapState(indexTap: index));
  }

  onSetListener(){
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: (ReceivedAction receivedAction)async{
        print('receivedAction@@@@@@@@@ $receivedAction');
        final infoPayload =receivedAction.payload!['my_payload'];
        final decodePayload = json.decode(infoPayload!);
        AwesomeNotifications().getGlobalBadgeCounter().then((value){
          print("value 1 $value");
          AwesomeNotifications().setGlobalBadgeCounter(value-1);
          print("value 2 $value");
        });
      },
      onNotificationCreatedMethod: (ReceivedNotification receivedNotification)async{
        print('receivedNotification@@@@@@@ $receivedNotification');
        // NotificationController.onNotificationCreatedMethod(context, receivedNotification);
      },
      onNotificationDisplayedMethod: (ReceivedNotification receivedNotification)async{
        print('receivedNotification@@@@@ $receivedNotification');
      },
      onDismissActionReceivedMethod: (ReceivedAction receivedAction)async{
        print('receivedAction@@@@@@ ${receivedAction.actionDate}');
        // NotificationController.onDismissActionReceivedMethod(context, receivedAction);
      },
    );
  }
  onMessageListening(RemoteMessage message) async {
    print('message@@@@@@@@@@ ${{message}}');
    print('notification ${{message.notification}}');
    print('Messages also onMessage.listen ${message.data}');

    //@@@ count notification
    AwesomeNotifications().getGlobalBadgeCounter().then((value){
      if(value==0){
        print("counter 0 $value");
      }else{
      }
      print("counter $value");
    });
    NotificationService.createBaseNotification(
      id: 1,
      title: '${message.notification!.title}',
      body: '${message.notification!.body}',
      payload:json.encode(message.data),
    );
  }

  onMessageOpenedAppController(RemoteMessage message) async {
    //@@@ count notification
    AwesomeNotifications().getGlobalBadgeCounter().then((value){
      if(value==0){
        print("counter 0 $value");
        // notificationCounter.value =value+1;
        // update();
      }else{
        // notificationCounter.value =value+1;
        // update();
      }
      print("counter $value");
      // update();
    });
    NotificationService.createBaseNotification(
      id: int.parse(message.data['id']),
      title: '${message.notification!.title}',
      body: '${message.notification!.body}',
      payload:json.encode(message.data),
    );
  }

}
