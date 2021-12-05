import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/FridayTTableProvider.dart';
import 'package:skulify_app/src/provider/MondayTTableProvider.dart';
import 'package:skulify_app/src/provider/SaturdayTTableProvider.dart';
import 'package:skulify_app/src/provider/ThursdayTTableProvider.dart';
import 'package:skulify_app/src/provider/TodayTTableProvider.dart';
import 'package:skulify_app/src/provider/TuesdayTTableProvider.dart';
import 'package:skulify_app/src/provider/WednesdayTTableProvider.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeCardTile.dart';

//List<mytimecardsModel> TimeCards = new List<mytimecardsModel>();

class TimeCards extends StatefulWidget {
  @override
  _TimeCardsState createState() => _TimeCardsState();
}

class _TimeCardsState extends State<TimeCards> {
  @override
  Widget build(BuildContext context) {
    final myDBTimeCards =
        Provider.of<TodayTTableProvider>(context, listen: false);
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height / 6.4,
        child: ListView.builder(
          itemCount: myDBTimeCards.getCardList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return AllTimeCardsTile(
              lessonTitle: myDBTimeCards.getCardList[index].lessonTitle,
              attendancePercentage:
                  myDBTimeCards.getCardList[index].attendancePercentage,
              timeSlot: myDBTimeCards.getCardList[index].timeSlot,
              imageUrl: myDBTimeCards.getCardList[index].imageUrl,
              attendanceColor: myDBTimeCards.getCardList[index].attendanceColor,
            );
          },
        ),
      ),
    );
  }
}
