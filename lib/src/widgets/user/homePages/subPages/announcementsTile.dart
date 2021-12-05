import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/BotomNav.dart';
import 'package:skulify_app/src/provider/messsgesProvider.dart';

class AnnouncementsTile extends StatelessWidget {
  final tag, content, date;
  AnnouncementsTile({this.content, this.date, this.tag});

  @override
  Widget build(BuildContext context) {
    var selectedNav = 0;
    void _onItemTapped(int index) {
      BotomNav bot = Provider.of<BotomNav>(context, listen: false);
      Navigator.pop(context);
      bot.setSave(index);
      // setState(() {
      //   selectedNav = index;
      // });
    }

    BotomNav botom = Provider.of<BotomNav>(context, listen: false);
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10),
        child: Container(
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(218, 139, 121, 1),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 14.0, left: 16.0, right: 16.0),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 6.0, top: 3.0, right: 6.0, bottom: 3.0),
                            child: Text(
                              // tag,
                              '12 Hrs Ago',
                              style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Container(
                                // child: Text(
                                //   date,
                                //   style: GoogleFonts.nunito(
                                //     textStyle: TextStyle(
                                //         color: Colors.white.withOpacity(0.9),
                                //         fontWeight: FontWeight.w500),
                                //   ),
                                // ),
                                ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 10.0, bottom: 6.0),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Today Is Holiday',
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            fontSize: 16,
                            height: 1.3,
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withOpacity(
                              0.9,
                            ),
                            // fontWeight: FontWeight.w400,
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 14),
                  child: Text(
                    content,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(
                          0.9,
                        ),
                        // fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
