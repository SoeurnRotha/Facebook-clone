import 'package:flutter/material.dart';
class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_circle),
                          SizedBox(width: 5,),
                          Text("Create")
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.turned_in),
                          SizedBox(width: 5,),
                          Text("Discover")
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 5,),
                          Text("Invites")
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(AssetImage("images/icon/like.png"),color: Colors.black,),
                          SizedBox(width: 5,),
                          Text("Like pages")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(alignment:Alignment.topLeft,child: Text("Pages You Manage",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            ),
            _imagePage("images/pic/02.jpg","Name Page"),
            _imagePage("images/pic/03.jpg","Name Page"),
            _imagePage("images/pic/04.jpg","Name Page"),
            _imagePage("images/pic/05.jpg","Name Page"),
          ],
        ),
      ),
    );
  }
  _imagePage(String ima,String name){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ima),
                  fit: BoxFit.cover,
                )
              ),
            ),
            SizedBox(width: 20,),
            Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            Container(margin:EdgeInsets.only(left: 140),child: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }
}
