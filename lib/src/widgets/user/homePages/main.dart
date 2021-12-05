import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/helper/FridayTimeData.dart';
import 'package:skulify_app/src/helper/MondayTimeData.dart';
import 'package:skulify_app/src/helper/SaturdayTimeData.dart';
import 'package:skulify_app/src/helper/ThursdayTimeData.dart';
import 'package:skulify_app/src/helper/TuesdayTimeData.dart';
import 'package:skulify_app/src/helper/WednesdayTimeData.dart';
import 'package:skulify_app/src/helper/announcementsData.dart';
import 'package:skulify_app/src/helper/classAttendanceData.dart';
import 'package:skulify_app/src/helper/examsAvailableData.dart';
import 'package:skulify_app/src/helper/messageData.dart';
import 'package:skulify_app/src/models/announcementsModel.dart';
import 'package:skulify_app/src/models/attendanceModel.dart';
import 'package:skulify_app/src/models/examsCardsModel.dart';
import 'package:skulify_app/src/models/messageModel.dart';
import 'package:skulify_app/src/models/timeCardModel.dart';
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
import 'package:skulify_app/src/widgets/user/SideDrawer/userDrawer.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/dashboard.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/messages.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/quickQuiz.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/rms.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/switchUser.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skulify_app/src/widgets/user/homePages/Drawer/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchTimeTable();
    fetchAttendanceList();
    fetchAllMessages();
    calculateAggregateAttendance();
    fetchAllAnnouncements();
    fetchAllExamsAvailableData();
  }

  var selectedNav = 0;
  List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    RMS(),
    SwitchUser(),
    QuickQuiz(),
  ];

  void _onItemTapped(int index) {
    BotomNav bot = Provider.of<BotomNav>(context, listen: false);
    Navigator.of(context).pushNamedAndRemoveUntil(
        '/login/home', (Route<dynamic> route) => false);
    bot.setSave(index);
    // setState(() {
    //   selectedNav = index;
    // });
  }

  void fetchAllMessages() {
    var allMessages = Provider.of<MessagesProvider>(context, listen: false);
    List<MessageModel> messages = getAllMessages();
    allMessages.setAllMessages(messages);
    //print(allMessages.getAllMessages.length);
  }

  void fetchAttendanceList() {
    var attendanceList =
        Provider.of<AttendanceProvider>(context, listen: false);
    List<AttendanceModel> attList = getAllAttendance();
    attendanceList.setAttendanceList(attList);
  }

  void fetchAllAnnouncements() {
    var announcementsList =
        Provider.of<AnnouncementsProvider>(context, listen: false);
    List<AnnouncementsModel> myAnnouncements = getAllAnnouncements();
    announcementsList.setAnnouncementsList(myAnnouncements);
  }

  void fetchAllExamsAvailableData() {
    var examsList = Provider.of<ExamsDataProvider>(context, listen: false);
    List<ExamsCardsModel> myExams = getAllExamsData();
    examsList.setExamsDataList(myExams);
  }

  void calculateAggregateAttendance() {
    final attendanceList =
        Provider.of<AttendanceProvider>(context, listen: false);
    final myAttendancePercent =
        Provider.of<AggregateAttendanceProvider>(context, listen: false);
    int sum = 0;
    int size = attendanceList.getAttendanceList.length;

    for (int i = 0; i < size; i++) {
      var attendancePercentage =
          ((double.parse(attendanceList.getAttendanceList[i].attendedCount) /
                      double.parse(
                          attendanceList.getAttendanceList[i].deliveredCount)) *
                  100)
              .round();
      sum += attendancePercentage;
    }
    final aggregateAttendanceMark = (sum / size).toInt();
    myAttendancePercent.setAggregateAttendance(aggregateAttendanceMark);
  }

  void fetchTimeTable() {
    ///Monday
    var mondayTimeTable =
        Provider.of<MondayTTableProvider>(context, listen: false);
    List<TimeCardModel> mondayTimings = getMondayTimeCards();
    mondayTimeTable.setCardList(mondayTimings);

    ///Tuesday
    var tuesdayTimeTable =
        Provider.of<TuesdayTTableProvider>(context, listen: false);
    List<TimeCardModel> tuesdayTimings = getTuesdayTimeCards();
    tuesdayTimeTable.setCardList(tuesdayTimings);

    ///Wednesday
    var wednesdayTimeTable =
        Provider.of<WednesdayTTableProvider>(context, listen: false);
    List<TimeCardModel> wednesdayTimings = getWednesdayTimeCards();
    wednesdayTimeTable.setCardList(wednesdayTimings);

    ///Thursday
    var thursdayTimeTable =
        Provider.of<ThursdayTTableProvider>(context, listen: false);
    List<TimeCardModel> thursdayTimings = getThursdayTimeCards();
    thursdayTimeTable.setCardList(thursdayTimings);

    ///Friday
    var fridayTimeTable =
        Provider.of<FridayTTableProvider>(context, listen: false);
    List<TimeCardModel> fridayTimings = getFridayTimeCards();
    fridayTimeTable.setCardList(fridayTimings);

    ///Saturday
    var saturdayTimeTable =
        Provider.of<SaturdayTTableProvider>(context, listen: false);
    List<TimeCardModel> saturdayTimings = getSaturdayTimeCards();
    saturdayTimeTable.setCardList(saturdayTimings);

    DateTime date = DateTime.now();
    String currentDay = DateFormat('EEEE').format(date);
    print(currentDay);
    switch (currentDay) {
      case "Monday":
        var todayTimeTable =
            Provider.of<TodayTTableProvider>(context, listen: false);
        List<TimeCardModel> todayTimings = getMondayTimeCards();
        todayTimeTable.setCardList(todayTimings);
        var tTableTabIndex =
            Provider.of<TimeTableTabIndexProvider>(context, listen: false);
        tTableTabIndex.setTTableTabIndex(0);
        break;
      case "Tuesday":
        var todayTimeTable =
            Provider.of<TodayTTableProvider>(context, listen: false);
        List<TimeCardModel> todayTimings = getTuesdayTimeCards();
        todayTimeTable.setCardList(todayTimings);
        var tTableTabIndex =
            Provider.of<TimeTableTabIndexProvider>(context, listen: false);
        tTableTabIndex.setTTableTabIndex(1);
        break;
      case "Wednesday":
        var todayTimeTable =
            Provider.of<TodayTTableProvider>(context, listen: false);
        List<TimeCardModel> todayTimings = getWednesdayTimeCards();
        todayTimeTable.setCardList(todayTimings);
        var tTableTabIndex =
            Provider.of<TimeTableTabIndexProvider>(context, listen: false);
        tTableTabIndex.setTTableTabIndex(2);
        break;
      case "Thursday":
        var todayTimeTable =
            Provider.of<TodayTTableProvider>(context, listen: false);
        List<TimeCardModel> todayTimings = getThursdayTimeCards();
        todayTimeTable.setCardList(todayTimings);
        var tTableTabIndex =
            Provider.of<TimeTableTabIndexProvider>(context, listen: false);
        tTableTabIndex.setTTableTabIndex(3);
        break;
      case "Friday":
        var todayTimeTable =
            Provider.of<TodayTTableProvider>(context, listen: false);
        List<TimeCardModel> todayTimings = getFridayTimeCards();
        todayTimeTable.setCardList(todayTimings);
        var tTableTabIndex =
            Provider.of<TimeTableTabIndexProvider>(context, listen: false);
        tTableTabIndex.setTTableTabIndex(4);
        break;
      case "Saturday":
        var todayTimeTable =
            Provider.of<TodayTTableProvider>(context, listen: false);
        List<TimeCardModel> todayTimings = getSaturdayTimeCards();
        todayTimeTable.setCardList(todayTimings);
        var tTableTabIndex =
            Provider.of<TimeTableTabIndexProvider>(context, listen: false);
        tTableTabIndex.setTTableTabIndex(5);
        break;
      default:
        var todayTimeTable =
            Provider.of<TodayTTableProvider>(context, listen: false);
        List<TimeCardModel> todayTimings = [];
        todayTimeTable.setCardList(todayTimings);
        var tTableTabIndex =
            Provider.of<TimeTableTabIndexProvider>(context, listen: false);
        tTableTabIndex.setTTableTabIndex(0);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    BotomNav botom = Provider.of<BotomNav>(context);
    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),
      // appBar: AppBar(
      //   actions: <Widget>[
      //     GestureDetector(
      //       onTap: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => Messages(),
      //             ));
      //         // do something
      //       },
      //       child: Padding(
      //         padding: const EdgeInsets.only(right: 8.0),
      //         child: Image.asset(
      //           'assets/images/email.png',
      //           color: Colors.black87,
      //           // height: 10.0,
      //           width: 30.0,
      //           // height: 10,
      //         ),
      //       ),
      //     ),
      //   ],
      //   // leading: Image.asset(
      //   //   'assets/images/menu.png',

      //   // ),
      //   iconTheme: new IconThemeData(color: Colors.black),
      //   centerTitle: true,

      //   backgroundColor: Color(0xfff6f7f9),
      // ),
      drawer: Drawer(
        child: DrawerApp(),
      ),
      body: _widgetOptions.elementAt(botom.getDefault()),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: color,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                title: Text("Dashboard"),
                icon: ImageIcon(AssetImage('assets/images/menu1.png'))),
            BottomNavigationBarItem(
                title: Text("Ask"),
                icon: ImageIcon(AssetImage('assets/images/rms.png'))),
            BottomNavigationBarItem(
                title: Text("Switch User"),
                icon: ImageIcon(AssetImage('assets/images/switchUser.png'))),
            BottomNavigationBarItem(
                title: Text('Quick Quiz'),
                icon: ImageIcon(AssetImage('assets/images/quiz.png'))),
          ],
          onTap: _onItemTapped,
          selectedItemColor: Colors.amber[800],
          currentIndex: botom.getDefault(),
        ),
      ),
    );
  }
}
