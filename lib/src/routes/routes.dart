import 'package:flutter/material.dart';
import 'package:skulify_app/src/widgets/user/homePages/Drawer/drawer.dart';
import 'package:skulify_app/src/widgets/user/homePages/main.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/dashboard.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/timeTable.dart';

//SplashScreen
import 'package:skulify_app/src/widgets/user/splashScreen/splashScreen.dart';

//Login
import 'package:skulify_app/src/widgets/user/login/userLogin.dart';

//Change User Name
import 'package:skulify_app/src/widgets/user/settings/changeUsername.dart';

//Change password
import 'package:skulify_app/src/widgets/user/forgotPassword/changePassword.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => UserLogin());
      case '/login/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/login/home/settings/changeUsername':
        return MaterialPageRoute(builder: (_) => ChangeUsername());
      case '/login/forgotpassword/changePassword':
        return MaterialPageRoute(builder: (_) => ChangePassword());
      case '/dashboard/timetable':
        return MaterialPageRoute(builder: (_) => TimeTable());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashBoard());
      case 'dashboard/drawer':
        return MaterialPageRoute(builder: (_) => DrawerApp());
    }
  }
}
