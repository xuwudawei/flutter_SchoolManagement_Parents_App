import 'package:flutter/material.dart';
import 'package:linkwell/linkwell.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/messageHistory.dart';

class MessagesTile extends StatefulWidget {
  final messageTitle, author, date, messageContent;
  MessagesTile(
      {this.messageTitle, this.author, this.date, this.messageContent});
  @override
  _MessagesTileState createState() => _MessagesTileState();
}

class _MessagesTileState extends State<MessagesTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 6.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            elevation: 2,
            child: Container(
              color: Colors.white,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, left: 12.0, right: 12.0, bottom: 0.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.messageTitle,
                          style: TextStyle(color: Colors.black87, fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: LinkWell(
                          widget.messageContent,
                          linkStyle:
                              TextStyle(fontSize: 14.0, color: Colors.green),
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 4.0, bottom: 12.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              widget.author,
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                            ),
                            Text(
                              widget.date,
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
