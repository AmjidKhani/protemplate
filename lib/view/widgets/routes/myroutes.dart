import 'package:flutter/material.dart';
import 'package:protemplate/view/widgets/routes/routes_names.dart';

import '../../screens/splash_screen.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      //  case letsGoSplash:
      // //   return MaterialPageRoute(builder: (context) => const LetsGoSplash());
      //  case homeScreen:
      //   // return MaterialPageRoute(builder: (context) => const HomeScreen());
      //  case signUp:
      //    //return MaterialPageRoute(builder: (context) => const SignUp());
      //  case login:
      //    //return MaterialPageRoute(builder: (context) => const Login());
      //  case profile:
      //    //return MaterialPageRoute(builder: (context) => const ProfileScreen());
      //  case yourTask:
      //    //return MaterialPageRoute(builder: (context) => const YourTaskScreen());
      //  case addNewTask:
      //    //return MaterialPageRoute(builder: (context) => const AddNewTask());
      //  case toDaysTask:
      //   // return MaterialPageRoute(builder: (context) => TodayTaskScreen());
      //  case trackLocation:
      //    //return MaterialPageRoute(builder: (context) => const TrackLocation());
      //  case locationAccess:
      //  //  return MaterialPageRoute(builder: (context) => const LocationAccess());
      //  case repeatTask:
      //  //  return MaterialPageRoute(builder: (context) => const RepeatTask());
      //  case editTask:
      //  //  return MaterialPageRoute(builder: (context) => EditTask());
      //  case editRepeatedTask:
      //    var data = settings.arguments as bool;
      //    // return MaterialPageRoute(
      //    //     builder: (context) => EditRepeatedTask(
      //    //           isFromYoursScreen: data,
      //    //         ));

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Text("no route Found"),
                ));
    }
  }
}
