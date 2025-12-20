import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';

import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class LaocalNotificationService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initLocalNotify() async {
    InitializationSettings settings = InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: DarwinInitializationSettings(),
    );
    flutterLocalNotificationsPlugin.initialize(settings);
  }

  static Future<void> basicNotofication() async {
    NotificationDetails details = NotificationDetails(
      android: AndroidNotificationDetails(
        "id 0",
        "Basic notifications",
        priority: Priority.high,
        importance: Importance.max,
      ),
    );
    await flutterLocalNotificationsPlugin.show(
      0,

      "Local Basic notification",
      "hello every body",
      details,
      payload: "Payload data",
    );
  }

  static Future<void> reabatedNotification() async {
    NotificationDetails details = NotificationDetails(
      android: AndroidNotificationDetails(
        "id 1",
        "Repeated notifications",
        priority: Priority.high,
        importance: Importance.max,
      ),
    );

    await flutterLocalNotificationsPlugin.periodicallyShow(
      androidScheduleMode: AndroidScheduleMode.alarmClock,
      1,

      "local Reapeated notification",
      "hello every body",
      RepeatInterval.everyMinute,
      details,
      payload: "Payload data",
    );
  }

  static Future<void> scheduledNotification() async {
    NotificationDetails details = NotificationDetails(
      android: AndroidNotificationDetails(
        "id 2",
        "Scheduled notifications",
        priority: Priority.high,
        importance: Importance.max,
      ),
    );

    tz.initializeTimeZones();
    final timeZoneInfo = await FlutterTimezone.getLocalTimezone();

    tz.setLocalLocation(tz.getLocation(timeZoneInfo.identifier));

    await flutterLocalNotificationsPlugin.zonedSchedule(
      androidScheduleMode: AndroidScheduleMode.alarmClock,
      2,

      "local Scheduled notification",
      "hello every body",
      tz.TZDateTime(tz.local, 2025, 12, 19, 20, 22),
      details,
      payload: "Payload data",
    );
  }

  static Future<void> pushForeground({required RemoteMessage message}) async {
    NotificationDetails details = NotificationDetails(
      android: AndroidNotificationDetails(
        "id 0",
        "Basic notifications",
        priority: Priority.high,
        importance: Importance.max,
      ),
    );
    await flutterLocalNotificationsPlugin.show(
      0,

      message.notification!.title ?? "0",
      message.notification!.body ?? "0",
      details,
      payload: "Payload data",
    );
  }
}
