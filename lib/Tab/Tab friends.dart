import 'package:flutter/material.dart';
class TabFriends extends StatefulWidget {
  const TabFriends({Key? key}) : super(key: key);

  @override
  State<TabFriends> createState() => _TabFriendsState();
}

class _TabFriendsState extends State<TabFriends> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildFriends,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(right: 125),
                child: Text("People You May Know",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          ),
          _buildMoreFriend(),
        ],
      ),
    );
  }
  get _buildFriends{
    return Container(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Friends",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(AssetImage("images/icon/search.png")),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Requests",style: TextStyle(fontSize: 18),)),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Your Firends",style: TextStyle(fontSize: 18),)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  _buildMoreFriend(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _fullProfileAndName("images/pic/03.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/04.jpg","images/pic/03.jpg","name"),
            _fullProfileAndName("images/pic/05.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/06.jpg","images/pic/09.jpg","name"),
            _fullProfileAndName("images/pic/07.jpg","images/pic/08.jpg","name"),
            _fullProfileAndName("images/pic/08.jpg","images/pic/07.jpg","name"),
            _fullProfileAndName("images/pic/09.jpg","images/pic/06.jpg","name"),
            _fullProfileAndName("images/pic/010.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/02.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/03.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/04.jpg","images/pic/03.jpg","name"),
            _fullProfileAndName("images/pic/05.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/06.jpg","images/pic/09.jpg","name"),
            _fullProfileAndName("images/pic/07.jpg","images/pic/08.jpg","name"),
            _fullProfileAndName("images/pic/08.jpg","images/pic/07.jpg","name"),
            _fullProfileAndName("images/pic/09.jpg","images/pic/06.jpg","name"),
            _fullProfileAndName("images/pic/010.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/02.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/03.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/04.jpg","images/pic/03.jpg","name"),
            _fullProfileAndName("images/pic/05.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/06.jpg","images/pic/09.jpg","name"),
            _fullProfileAndName("images/pic/07.jpg","images/pic/08.jpg","name"),
            _fullProfileAndName("images/pic/08.jpg","images/pic/07.jpg","name"),
            _fullProfileAndName("images/pic/09.jpg","images/pic/06.jpg","name"),
            _fullProfileAndName("images/pic/010.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/02.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/03.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/04.jpg","images/pic/03.jpg","name"),
            _fullProfileAndName("images/pic/05.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/06.jpg","images/pic/09.jpg","name"),
            _fullProfileAndName("images/pic/07.jpg","images/pic/08.jpg","name"),
            _fullProfileAndName("images/pic/08.jpg","images/pic/07.jpg","name"),
            _fullProfileAndName("images/pic/09.jpg","images/pic/06.jpg","name"),
            _fullProfileAndName("images/pic/010.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/02.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/03.jpg","images/pic/04.jpg","name"),
            _fullProfileAndName("images/pic/04.jpg","images/pic/03.jpg","name"),
            _fullProfileAndName("images/pic/05.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/06.jpg","images/pic/09.jpg","name"),
            _fullProfileAndName("images/pic/07.jpg","images/pic/08.jpg","name"),
            _fullProfileAndName("images/pic/08.jpg","images/pic/07.jpg","name"),
            _fullProfileAndName("images/pic/09.jpg","images/pic/06.jpg","name"),
            _fullProfileAndName("images/pic/010.jpg","images/pic/05.jpg","name"),
            _fullProfileAndName("images/pic/02.jpg","images/pic/04.jpg","name"),


          ],
        ),
      ),
    );
  }
  _fullProfileAndName(String image1,String image2,String name){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _boxImage(image1),
        _boxAdd(name, image2)
      ],
    );
  }
  _boxImage(String ima){
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(ima),
          fit: BoxFit.cover
        )
      ),
    );
  }
  _boxAdd(String name,String img){
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 200),
              child: Text(name,style: TextStyle(fontSize: 15),)
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(right: 135),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.cover
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 1
                        )
                      ]
                  ),
                ),
                SizedBox(width: 10,),
                Text("1 mutual friend")
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ElevatedButton(
                child: Text("Add Friend",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  fixedSize: Size(130, 40),
                ),
                onPressed: (){

                },
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                child: Text("Remove",style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.grey[200],
                  fixedSize: Size(130,40)
                ),
                onPressed: (){

                },
              )
            ],
          )
        ],
      ),
    );
  }
}
