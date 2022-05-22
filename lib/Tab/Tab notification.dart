import 'package:flutter/material.dart';
class TabNotification extends StatefulWidget {
  const TabNotification({Key? key}) : super(key: key);

  @override
  State<TabNotification> createState() => _TabNotificationState();
}

class _TabNotificationState extends State<TabNotification> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildNotification,
          _buildBoxPerson()
        ],
      ),
    );
  }
  get _buildNotification{
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notification",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(AssetImage("images/icon/search.png")),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(right: 300),
                child: Text("New",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
          ],
        ),
      ),
    );
  }
  _buildBoxPerson(){
    return Column(
      children: [
        _box("images/pic/02.jpg","images/reach/haha.png","Yesterday 12:00"),
        _box("images/pic/03.jpg","images/reach/love.png","Yesterday 12:00"),
        _box("images/pic/04.jpg","images/reach/like.png","Yesterday 12:00"),
        _box("images/pic/06.jpg","images/reach/care.png","Yesterday 12:00"),
        _box("images/pic/05.jpg","images/reach/sad.png","Yesterday 12:00"),
        _box("images/pic/08.jpg","images/reach/wow.png","Yesterday 12:00"),
        _box("images/pic/07.jpg","images/reach/love.png","Yesterday 12:00"),
        _box("images/pic/010.jpg","images/reach/like.png","Yesterday 12:00"),
        _box("images/pic/09.jpg","images/reach/care.png","Yesterday 12:00"),

        _box("images/pic/02.jpg","images/reach/haha.png","Yesterday 12:00"),
        _box("images/pic/03.jpg","images/reach/love.png","Yesterday 12:00"),
        _box("images/pic/04.jpg","images/reach/like.png","Yesterday 12:00"),
        _box("images/pic/06.jpg","images/reach/care.png","Yesterday 12:00"),
        _box("images/pic/05.jpg","images/reach/sad.png","Yesterday 12:00"),
        _box("images/pic/08.jpg","images/reach/wow.png","Yesterday 12:00"),
        _box("images/pic/07.jpg","images/reach/love.png","Yesterday 12:00"),
        _box("images/pic/010.jpg","images/reach/like.png","Yesterday 12:00"),
        _box("images/pic/09.jpg","images/reach/care.png","Yesterday 12:00"),

        _box("images/pic/02.jpg","images/reach/haha.png","Yesterday 12:00"),
        _box("images/pic/03.jpg","images/reach/love.png","Yesterday 12:00"),
        _box("images/pic/04.jpg","images/reach/like.png","Yesterday 12:00"),
        _box("images/pic/06.jpg","images/reach/care.png","Yesterday 12:00"),
        _box("images/pic/05.jpg","images/reach/sad.png","Yesterday 12:00"),
        _box("images/pic/08.jpg","images/reach/wow.png","Yesterday 12:00"),
        _box("images/pic/07.jpg","images/reach/love.png","Yesterday 12:00"),
        _box("images/pic/010.jpg","images/reach/like.png","Yesterday 12:00"),
        _box("images/pic/09.jpg","images/reach/care.png","Yesterday 12:00"),




      ],
    );
  }
  _box(String ima,String reach,String time){
    return Container(
      height: 100,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 80,height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(ima),
                        fit: BoxFit.cover
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50,top: 45),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                    image: DecorationImage(
                      image: AssetImage(reach),
                      fit: BoxFit.cover
                    )
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("reachted your post"),
                      Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(right: 80),
                      child: Text(time)
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
}
}
