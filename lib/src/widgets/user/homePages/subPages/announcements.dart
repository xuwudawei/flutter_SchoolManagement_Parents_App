import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/announcementsProvider.dart';

import 'package:skulify_app/src/widgets/user/homePages/subPages/announcementsTile.dart';

class Announcements extends StatefulWidget {
  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  @override
  Widget build(BuildContext context) {
    final myAnnouncements =
        Provider.of<AnnouncementsProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Announcements',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w300,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        backgroundColor: Color(0xfff6f7f9),
      ),
      backgroundColor: Color.fromRGBO(241, 246, 249, 1),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          // physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: myAnnouncements.getAllAnnouncements.length,
          itemBuilder: (BuildContext context, int index) {
            return AnnouncementsTile(
              content: myAnnouncements.getAllAnnouncements[index].content,
              date: myAnnouncements.getAllAnnouncements[index].date,
              tag: myAnnouncements.getAllAnnouncements[index].tag,
            );
          },
        ),
      ),
    );
  }
}
