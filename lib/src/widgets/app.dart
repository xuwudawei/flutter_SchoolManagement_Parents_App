import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/BotomNav.dart';
import 'package:skulify_app/src/provider/FridayTTableProvider.dart';
import 'package:skulify_app/src/provider/MondayTTableProvider.dart';
import 'package:skulify_app/src/provider/SaturdayTTableProvider.dart';
import 'package:skulify_app/src/provider/ThursdayTTableProvider.dart';
import 'package:skulify_app/src/provider/TodayTTableProvider.dart';
import 'package:skulify_app/src/provider/TuesdayTTableProvider.dart';
import 'package:skulify_app/src/provider/WednesdayTTableProvider.dart';
import 'package:skulify_app/src/provider/aggregateAttendanceProvider.dart';
import 'package:skulify_app/src/provider/announcementsProvider.dart';
import 'package:skulify_app/src/provider/attendanceProvider.dart';
import 'package:skulify_app/src/provider/examsDataProvider.dart';
import 'package:skulify_app/src/provider/messsgesProvider.dart';
import 'package:skulify_app/src/provider/timeTableTabIndexProvider.dart';
import 'package:skulify_app/src/provider/userInfoProvider.dart';
import 'package:skulify_app/src/routes/routes.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool logged = false;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BotomNav(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserInfoProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MondayTTableProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => TuesdayTTableProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => WednesdayTTableProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThursdayTTableProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FridayTTableProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SaturdayTTableProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => TodayTTableProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AttendanceProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MessagesProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AggregateAttendanceProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => TimeTableTabIndexProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AnnouncementsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExamsDataProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: logged ? '/login/home' : '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
