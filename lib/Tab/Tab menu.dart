import 'package:clone_facebook/Page/AccountUser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TabMenu extends StatefulWidget {
  const TabMenu({Key? key}) : super(key: key);

  @override
  State<TabMenu> createState() => _TabMenuState();
}

class _TabMenuState extends State<TabMenu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Menu",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.only(left: 200),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],

                  ),
                  child: Icon(Icons.settings,color: Colors.black,),
                ),
                SizedBox(width: 10,),
                Container(

                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],

                  ),
                  child: Icon(Icons.search,color: Colors.black,),
                ),
              ],
            ),
          ),
          InkWell(
            child: _boxProfile("images/pic/02.jpg","User Name","See your profile"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountUser()));
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          InkWell(
            child: _boxPage("images/pic/04.jpg","Page name"),
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> TabUser()));
            },
          ),
          InkWell(
            child: _boxPage("images/pic/06.jpg","Page name"),
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> TabUser()));
            },
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(alignment:Alignment.topLeft,child: Text("Your shorteuts")),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.all(8),child: _boxShort,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment:Alignment.topLeft,child: Text("All shortcuts")),
          ),

          _boxAllShort,
          SizedBox(height: 20,),
          _seeMore,
          Divider(
            color: Colors.black,
          ),

          _buildSeemore1(Icons.favorite_sharp, "Community resources",Icons.arrow_drop_down),
          _buildSeemore2(Icons.help, "Help & Support",Icons.arrow_drop_down),
          _buildSeemore3(Icons.settings, "Setting & Privacy",Icons.arrow_drop_down),
          Divider(
            color: Colors.black,
          ),
          _logOut
        ],
      ),
    );
  }
  _boxProfile(String ima,String name,String see){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(ima),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(width: 15,),
          Column(
            children: [
              Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text(see,style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],
          ),
        ],
      ),
    );
}
  _boxPage(String ima,String name){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(ima),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(width: 15,),
          Text(name,style: TextStyle(fontSize: 15),),
        ],
      ),
    );
  }
  get _boxShort{
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _imageShort("images/pic/02.jpg","Name"),
          SizedBox(width: 15,),
          _imageShort("images/pic/03.jpg","Name"),
          SizedBox(width: 15,),
          _imageShort("images/pic/04.jpg","Name"),
          SizedBox(width: 15,),
          _imageShort("images/pic/05.jpg","Name"),
          SizedBox(width: 15,),
          _imageShort("images/pic/06.jpg","Name"),
          SizedBox(width: 15,),
          _imageShort("images/pic/07.jpg","Name"),
          SizedBox(width: 15,),
          _imageShort("images/pic/08.jpg","Name"),

        ],
      ),
    );
  }
  _imageShort(String ima,String name){
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(ima),
                      fit: BoxFit.cover
                  ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                    offset: Offset(4,4)
                  )
                ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 55,left: 60),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ImageIcon(AssetImage("images/icon/friends.png")),
              ),
            )
          ],
        ),
        Text(name),
      ],
    );
  }
  get _boxAllShort{
    return Column(
      children: [
        _buildAllShort("images/menu/video.png","Video on Watch","images/icon/page.png","Pages"),
        _buildAllShort("images/menu/games.png","Gamming","images/menu/friend.png","Friends"),
        _buildAllShort("images/menu/people.png","Group","images/menu/mark.png","Marketplace"),
        _buildAllShort("images/menu/memories.png","Memories","images/menu/save.png","Saved"),
        _buildAllShort("images/menu/events.png","Events","images/menu/nearby.png","Nearby friends"),
      ],
    );
  }
  _buildAllShort(String ima,String nameEvents,String ima2,String nameEvents2){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 180,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(4,4),
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Image.asset(ima,width: 30,height: 30,)
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.topLeft,
                      child: Text(nameEvents))
                ],
              ),
            ),
          ),
          Container(
            width: 180,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(4,4),
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      child: Image.asset(ima2,width: 30,height: 30,)
                  ),
                  SizedBox(height: 10,),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(nameEvents2))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  get _seeMore{
    return ElevatedButton(
      child: Text("See more",style: TextStyle(color: Colors.black),),
      style: ElevatedButton.styleFrom(
        primary: Colors.grey[100],
        onPrimary: Colors.grey,
        fixedSize: Size(350, 40)
      ),
      onPressed: (){

      },
    );
  }
  _buildSeemore1(icon1,String title,icon2){
    return Container(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon1,size: 30,),
            SizedBox(width: 15,),
            Text(title,style: TextStyle(fontSize: 20),),
            SizedBox(width: 103,),
            Icon(icon2,size: 30,),
          ],
        ),
      ),
    );
  }
  _buildSeemore2(icon1,String title,icon2){
    return Container(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon1,size: 30,),
            SizedBox(width: 15,),
            Text(title,style: TextStyle(fontSize: 20),),
            SizedBox(width: 165,),
            Icon(icon2,size: 30,),
          ],
        ),
      ),
    );
  }
  _buildSeemore3(icon1,String title,icon2){
    return Container(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon1,size: 30,),
            SizedBox(width: 15,),
            Text(title,style: TextStyle(fontSize: 20),),
            SizedBox(width: 150,),
            Icon(icon2,size: 30,),
          ],
        ),
      ),
    );
  }
  get _logOut{
    return ElevatedButton(
      child: Text("Log Out",style: TextStyle(color: Colors.black),),
      style: ElevatedButton.styleFrom(
          primary: Colors.grey[100],
          onPrimary: Colors.grey,
          fixedSize: Size(350, 40)
      ),
      onPressed: (){

      },
    );
  }
}
