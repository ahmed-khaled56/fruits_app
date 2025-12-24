import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:task_1/cores/helper/firebase_message_backgrounHandler.dart';

import 'package:task_1/cores/services/local_notification_service.dart';
import 'package:task_1/cores/services/push_notifications.dart';

import 'package:task_1/features/splash/presentaion/views/splash_view.dart';
import 'package:task_1/firebase_options.dart';
import 'package:timezone/data/latest.dart' as tz;
//import 'package:timezone/data/latest.dart' as tz;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize('40124461-8b03-4337-90f7-962a2c27593b');
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  OneSignal.Notifications.requestPermission(false);
  await LaocalNotificationService.initLocalNotify();

  await PushNotifications.initPushNotf();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  print("APP STARTED !!!!!");
  // runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp()));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Color(0xffFFFFFF),
      ),

      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
