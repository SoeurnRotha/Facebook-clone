import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TabUser extends StatefulWidget {
  const TabUser({Key? key}) : super(key: key);

  @override
  State<TabUser> createState() => _TabUserState();
}

class _TabUserState extends State<TabUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _boxCover,
          Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          _buildBoxAdd,
          _buildCv(),
          _buildStory(),
          _boxEditPublic,
          _buildFriend(),
          _ruler(),
          _post,
          _ruler(),
          SizedBox(height: 10,),
          _postPhto,
          SizedBox(height: 10,),
          _ruler(),
          _buildPostUser("images/pic/02.jpg","images/pic/02.jpg"),
          _buildPostUser("images/pic/02.jpg","images/pic/03.jpg"),
          _buildPostUser("images/pic/02.jpg","images/pic/04.jpg"),
          _buildPostUser("images/pic/02.jpg","images/pic/05.jpg"),
          _buildPostUser("images/pic/02.jpg","images/pic/06.jpg"),
          _buildPostUser("images/pic/02.jpg","images/pic/07.jpg"),

        ],
      ),
    );
  }
  _buildPost(String profile,String Pic){
    return Container(
      height: 610,
      color: Colors.blue,
      child: Column(
        children: [
          _ProfileUser(profile),
          _pic(Pic),
          _LikeCommentShare,
          _ruler()
        ],
      ),
    );
  }
  _ruler(){
    return Container(
      width: double.infinity,
      height: 15,
      color: Colors.grey,
    );
  }
  get _boxCover{
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 250,
          width: 370,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage("images/pic/09.jpg"),
                fit: BoxFit.cover
              )
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(left: 320,top: 200),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 200),
          width: 170,
          height: 170,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 5
              )
            ]
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 200),
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 5
              )
            ],
            image: DecorationImage(
              image: AssetImage("images/pic/02.jpg"),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 300,left: 130),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt),
          ),
        )
      ],
    );
  }
  get _buildBoxAdd{
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(AssetImage("images/icon/story.png")),
                SizedBox(width: 10,),
                Text("Add to story")
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              fixedSize: Size(150, 40),

            ),
            onPressed: (){

            },
          ),
          SizedBox(width: 5,),
          ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit,color: Colors.black,),
                SizedBox(width: 10,),
                Text("Edit profile",style: TextStyle(color: Colors.black),)
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[200],
              onPrimary: Colors.grey,
              fixedSize: Size(150, 40),

            ),
            onPressed: (){

            },
          ),
          SizedBox(width: 5,),
          ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.more_horiz,color: Colors.black,),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[200],
              onPrimary: Colors.white,
              fixedSize: Size(0 ,40),

            ),
            onPressed: (){

            },
          ),
        ],
      ),
    );
  }
  _buildCv(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.work,size: 25,color: Colors.grey[600],),
              SizedBox(width: 10,),
              Text("Works at Streamer",style: TextStyle(fontSize: 15),),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(Icons.school,size: 25,color: Colors.grey[600],),
              SizedBox(width: 10,),
              Text("Went to RUPP - Royal university of Phnom Penh",style: TextStyle(fontSize: 15),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(Icons.home,size: 25,color: Colors.grey[600],),
              SizedBox(width: 10,),
              Text("Lives in Phnom Penh",style: TextStyle(fontSize: 15),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(Icons.location_on_rounded,size: 25,color: Colors.grey[600],),
              SizedBox(width: 10,),
              Text("From Cambodia ",style: TextStyle(fontSize: 15),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(Icons.favorite,size: 25,color: Colors.grey[600],),
              SizedBox(width: 10,),
              Text("Single",style: TextStyle(fontSize: 15),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(Icons.timelapse,size: 25,color: Colors.grey[600],),
              SizedBox(width: 10,),
              Text("Joined Fabruary 2014",style: TextStyle(fontSize: 15),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Icon(Icons.more_horiz,size: 25,color: Colors.grey[600],),
              SizedBox(width: 10,),
              Text("See your About info",style: TextStyle(fontSize: 15),)
            ],
          ),

        ],
      ),
    );
  }
  _buildStory(){
    return Container(
      height: 220,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _imageForStory("images/pic/02.jpg","New"),
              SizedBox(width: 10,),
              _imageForStory("images/pic/03.jpg","New"),
              SizedBox(width: 10,),
              _imageForStory("images/pic/04.jpg","New"),
              SizedBox(width: 10,),
              _imageForStory("images/pic/05.jpg","New"),
              SizedBox(width: 10,),
              _imageForStory("images/pic/06.jpg","New"),
              SizedBox(width: 10,),
              _imageForStory("images/pic/07.jpg","New"),
              SizedBox(width: 10,),
              _imageForStory("images/pic/08.jpg","New"),
              SizedBox(width: 10,),
              _imageForStory("images/pic/09.jpg","New"),

            ],
          ),
        ),
      ),
    );
  }
  _imageForStory(String image,String name){
    return Column(
      children: [
        Container(
          width: 120,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            )
          ),
        ),
        Text(name)
      ],
    );
  }
  get _boxEditPublic{
    return ElevatedButton(
      child: Text("Edit pubilc datails",style: TextStyle(color: Colors.blueAccent),),
      style: ElevatedButton.styleFrom(
        primary: Colors.lightBlue[100],
        onPrimary: Colors.grey[200],
        fixedSize: Size(380, 40)
      ),
      onPressed: (){

      },
    );
  }
  _buildFriend(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Text("Frineds",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text("Find",style: TextStyle(color: Colors.blueAccent,fontSize: 20),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("4999 friends",style: TextStyle(fontSize: 20,color: Colors.grey),),
              Text("Friends",style: TextStyle(fontSize: 20,color: Colors.blue),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _imageFriends("images/pic/06.jpg", "name"),
              _imageFriends("images/pic/07.jpg", "name"),
              _imageFriends("images/pic/08.jpg", "name"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _imageFriends("images/pic/09.jpg", "name"),
              _imageFriends("images/pic/010.jpg", "name"),
              _imageFriends("images/pic/02.jpg", "name"),
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            child: Text("See all friends",style: TextStyle(color: Colors.black),),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[200],
              onPrimary: Colors.grey,
              fixedSize: Size(380, 40)
            ),
            onPressed: (){

            },
          )
        ],
      ),
    );
}
  _imageFriends(String image,String name){
    return Column(
      children: [
        Container(
          width: 120  ,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )
          ),
        ),
        Text(name),
      ],
    );
  }
  get _post{
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Post",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Container(
                margin: EdgeInsets.only(left: 220),
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.more_horiz),
                ),
              ),
              Container(
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.settings),
                ),
              )

            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("images/pic/02.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "What's on your mind?",
                        hintStyle: TextStyle(fontSize: 20),
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage("images/icon/live.png")),
                      SizedBox(width: 10,),
                      Text("Live",style: TextStyle(fontSize: 12,color: Colors.black),)
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(120 , 40),
                  primary: Colors.white,
                  onPrimary: Colors.grey
                ),
                onPressed: (){
                  
                },
              ),
              ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage("images/icon/image.png")),
                      SizedBox(width: 10,),
                      Text("Photos",style: TextStyle(fontSize: 10,color: Colors.black),)
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 40),
                    primary: Colors.white,
                    onPrimary: Colors.grey
                ),
                onPressed: (){

                },
              ),
              ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ImageIcon(AssetImage("images/icon/page.png")),
                      SizedBox(width: 10,),
                      Text("Life events",style: TextStyle(fontSize: 10,color: Colors.black),)
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(132, 40),
                    primary: Colors.white,
                    onPrimary: Colors.grey
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
  get _postPhto{
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[400],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(AssetImage("images/icon/image.png")),
                SizedBox(width: 5,),
                Text("Photos")
              ],
            ),
          ),
          Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[400],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
                SizedBox(width: 5,),
                Text("Avatars")
              ],
            ),
          ),
          Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[400],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_rate),
                SizedBox(width: 5,),
                Text("Life events")
              ],
            ),
          )
        ],
      ),
    );
  }


  _buildPostUser(String profile,String Pic){
    return Container(
      height: 635,
      color: Colors.blue,
      child: Column(
        children: [
          _ProfileUser(profile),
          _pic(Pic),
          _LikeCommentShare,
          _ruler()
        ],
      ),
    );
  }
  _ProfileUser(String profile){
    return Container(
      height: 120,
      color: Colors.white,
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              shape: BoxShape.circle
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.5,top: 4.5),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(profile),
                                  fit: BoxFit.cover
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize:16),),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: Row(
                            children: [
                              Text("1d"),
                              SizedBox(width: 10,),
                              Icon(Icons.public),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 180,),
                  Icon(Icons.more_horiz,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Icon(Icons.close,color: Colors.grey,)
                ],
              ),
              Container(
                  margin: EdgeInsets.only(right: 335),
                  child: Text("Hello")
              )
            ],
          ),

        ],
      ),
    );
  }
  _pic(String Pic){
    return Container(
      height: 450,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Pic),
              fit: BoxFit.cover
          )
      ),
    );
  }
  get _LikeCommentShare{
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // ElevatedButton(
          //   child: Container(
          //     alignment: Alignment.center,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Row(
          //         children: [
          //           ImageIcon(AssetImage("images/icon/like.png"),color: Colors.grey[600],),
          //           SizedBox(width: 10,),
          //           Text("Like",style: TextStyle(color: Colors.grey[500]),)
          //         ],
          //       ),
          //     ),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.white ,
          //     fixedSize: Size(120, 30),
          //     side: BorderSide(width: 1,color: Colors.black),
          //     onPrimary: Colors.blueAccent,
          //   ),
          //   onPressed: (){
          //
          //   },
          // ),
          // SizedBox(width: 10,),
          // ElevatedButton(
          //   child: Container(
          //     alignment: Alignment.center,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Row(
          //         children: [
          //           ImageIcon(AssetImage("images/icon/comment.png"),color: Colors.grey[500],),
          //           Text("comment",style: TextStyle(color: Colors.grey[500]),)
          //         ],
          //       ),
          //     ),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.white ,
          //     fixedSize: Size(120, 30),
          //     side: BorderSide(width: 1,color: Colors.black),
          //     onPrimary: Colors.blueAccent,
          //   ),
          //   onPressed: (){
          //
          //   },
          // ),
          // SizedBox(width: 10,),
          // ElevatedButton(
          //   child: Container(
          //     alignment: Alignment.center,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Row(
          //         children: [
          //           ImageIcon(AssetImage("images/icon/share.png"),color: Colors.grey[600],),
          //           SizedBox(width: 10,),
          //           Text("Share",style: TextStyle(color: Colors.grey[500]),)
          //         ],
          //       ),
          //     ),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.white ,
          //     fixedSize: Size(120, 30),
          //     side: BorderSide(width: 1,color: Colors.black),
          //     onPrimary: Colors.blueAccent,
          //   ),
          //   onPressed: (){
          //
          //   },
          // ),
          Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black,spreadRadius: 1),
              ],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(AssetImage("images/icon/like.png")),
                SizedBox(width: 10,),
                Text("Like")
              ],
            ),
          ),
          Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black,spreadRadius: 1),
              ],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(AssetImage("images/icon/comment.png")),
                SizedBox(width: 10,),
                Text("Comment")
              ],
            ),
          ),
          Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black,spreadRadius: 1),
              ],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(AssetImage("images/icon/share.png")),
                SizedBox(width: 10,),
                Text("Share")
              ],
            ),
          )
        ],
      ),
    );
  }
}
