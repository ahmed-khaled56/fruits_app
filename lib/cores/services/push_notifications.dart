import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:task_1/cores/services/local_notification_service.dart';

class PushNotifications {
  static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  static Future<void> initPushNotf() async {
    await firebaseMessaging.requestPermission();
    String? token = await firebaseMessaging.getToken();
    log("token is : $token");

    // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    handelForeGroundMessages();
  }

  static void handelForeGroundMessages() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LaocalNotificationService.pushForeground(message: message);
    });
  }

  // static Future<void> handelBackgroundMessage(RemoteMessage message) async {
  //   await Firebase.initializeApp();
  //   log(message.notification!.title ?? "");
  // }
}
