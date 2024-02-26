import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:protemplate/view/widgets/routes/myroutes.dart';
import 'package:protemplate/view/widgets/routes/routes_names.dart';
import 'controller/shared_prefrences/sharedpreferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefs.init();

  // await Firebase.initializeApp(
  //      options: DefaultFirebaseOptions.currentPlatform,
  //     );

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 752),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Media Plaie',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            onGenerateRoute: MyRoutes.generateRoute,
            initialRoute: splashScreen,
            // home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        });
  }
}
