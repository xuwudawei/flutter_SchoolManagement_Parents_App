import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/BotomNav.dart';
import 'package:skulify_app/src/provider/messsgesProvider.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/messageHistory.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/messageTile.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
    final allMessages = Provider.of<MessagesProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Messages',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w300,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: GestureDetector(
              child: Image.asset(
                'assets/images/oldmessages1.png',
                width: 24,
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessagesHistory()));
              // do something

              // do something
            },
          )
        ],
        backgroundColor: Color(0xfff6f7f9),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: allMessages.getAllMessages.length,
          shrinkWrap: true,
          // physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return MessagesTile(
              messageTitle: allMessages.getAllMessages[index].messagTitle,
              author: allMessages.getAllMessages[index].author,
              date: allMessages.getAllMessages[index].date,
              messageContent: allMessages.getAllMessages[index].messageContent,
            );
          },
        ),
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
