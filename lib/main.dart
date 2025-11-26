import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_1/features/splash/presentaion/views/splash_view.dart';
import 'package:device_preview/device_preview.dart';
// void main() async {
//   // await SystemChrome.setPreferredOrientations([
//   //   DeviceOrientation.portraitUp,
//   //   DeviceOrientation.portraitDown,
//   //   DeviceOrientation.landscapeLeft,
//   //   DeviceOrientation.landscapeRight,
//   // ]);

//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  double portraitWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < size.height ? size.width : size.height;
  }

  double portraitHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height > size.width ? size.height : size.width;
  }

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
