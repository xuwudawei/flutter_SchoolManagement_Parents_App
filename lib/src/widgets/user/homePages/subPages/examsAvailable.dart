import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/examsDataProvider.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/examsCardTile.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/messageHistory.dart';

class ExamsAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myExamsData = Provider.of<ExamsDataProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Exams Available',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w300,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        backgroundColor: Color(0xfff6f7f9),
      ),
      body: Container(
        color: Color.fromRGBO(241, 246, 249, 1),
        child: ListView.builder(
          itemCount: myExamsData.getAllExamsData.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return ExamsCardTile(
              subjectName: myExamsData.getAllExamsData[index].subjectName,
              date: myExamsData.getAllExamsData[index].date,
              examCategory: myExamsData.getAllExamsData[index].examCategory,
              examTime: myExamsData.getAllExamsData[index].examTime,
              examsLink: myExamsData.getAllExamsData[index].examsLink,
              reportingTime: myExamsData.getAllExamsData[index].reportingTime,
              roomNo: myExamsData.getAllExamsData[index].roomNo,
            );
          },
        ),
      ),
    );
  }
}
