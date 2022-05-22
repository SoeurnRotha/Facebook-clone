import 'package:clone_facebook/Tab/Tab%20User.dart';
import 'package:clone_facebook/Tab/Tab%20friends.dart';
import 'package:clone_facebook/Tab/Tab%20home.dart';
import 'package:clone_facebook/Tab/Tab%20menu.dart';
import 'package:clone_facebook/Tab/Tab%20notification.dart';
import 'package:clone_facebook/Tab/Tab%20page.dart';
import 'package:flutter/material.dart';
class MyHomeFacebook extends StatefulWidget {
  const MyHomeFacebook({Key? key}) : super(key: key);

  @override
  State<MyHomeFacebook> createState() => _MyHomeFacebookState();
}

class _MyHomeFacebookState extends State<MyHomeFacebook> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: _buildAppbar,
        body: _buildBody,
      ),
    );
  }
  get _buildAppbar {
    return AppBar(
      backgroundColor: Colors.white,
     title: Text("Facebook",style: TextStyle(fontSize: 30,color: Colors.blue[400],fontFamily: "fb"),),
      actions: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: Container(
                alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/icon/search.png")),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/icon/mess.png")),
            ),
          ],
        )
      ],
    );
  }
  get _buildBody {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTabBar,
          _buildTabbarView
        ],
      ),
    );
  }
  get _buildTabBar{
    return TabBar(
        tabs: [
          Tab(child: ImageIcon(AssetImage("images/icon/home.png"),color: Colors.black,)),
          Tab(child: ImageIcon(AssetImage("images/icon/friends.png"),color: Colors.black,)),
          Tab(child: ImageIcon(AssetImage("images/icon/user.png"),color: Colors.black,)),
          Tab(child: ImageIcon(AssetImage("images/icon/page.png"),color: Colors.black,)),
          Tab(child: ImageIcon(AssetImage("images/icon/notification.png"),color: Colors.black,)),
          Tab(child: ImageIcon(AssetImage("images/icon/menu.png"),color: Colors.black,)),
        ],
    );
  }
  get _buildTabbarView{
    return Container(
      height: 6000,
        child: TabBarView(
          children: [
            TabHome(),
            TabFriends(),
            TabUser(),
            // TabVideo(),
            // TabPage(),
            // TabUser(),
            TabPage(),
            TabNotification(),
            TabMenu()
          ],
        ),
    );
  }
}
