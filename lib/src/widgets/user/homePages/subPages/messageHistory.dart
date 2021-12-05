import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:linkwell/linkwell.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/BotomNav.dart';
import 'package:skulify_app/src/provider/messsgesProvider.dart';
import 'package:skulify_app/src/models/messageModel.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/messageTile.dart';

class MessagesHistory extends StatefulWidget {
  @override
  _MessagesHistoryState createState() => _MessagesHistoryState();
}

class _MessagesHistoryState extends State<MessagesHistory> {
  @override
  Widget build(BuildContext context) {
    var selectedNav = 0;
    void _onItemTapped(int index) {
      BotomNav bot = Provider.of<BotomNav>(context, listen: false);
      Navigator.pop(context);
      Navigator.pop(context);
      bot.setSave(index);
      // setState(() {
      //   selectedNav = index;
      // });
    }

    final BotomNav botom = Provider.of<BotomNav>(context, listen: false);
    final allMessages = Provider.of<MessagesProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'My Message History',
          style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 18,
              fontWeight: FontWeight.w300),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                    icon: Text(
                  '289',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                  // do something
                ))),
          ),
        ],
        backgroundColor: Color(0xfff6f7f9),
      ),
      body: Column(
        children: <Widget>[
          //SearchBar(onSearch: null, onItemFound: null),
          Expanded(
            child: Container(
              color: Color.fromRGBO(241, 246, 249, 1),
              child: ListView.builder(
                itemCount: allMessages.getAllMessages.length,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return MessagesTile(
                    messageTitle: allMessages.getAllMessages[index].messagTitle,
                    author: allMessages.getAllMessages[index].author,
                    date: allMessages.getAllMessages[index].date,
                    messageContent:
                        allMessages.getAllMessages[index].messageContent,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
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
