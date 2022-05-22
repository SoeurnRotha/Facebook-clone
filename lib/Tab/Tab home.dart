import 'package:flutter/material.dart';
class TabHome extends StatefulWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  State<TabHome> createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _headerStater,
          _ruler(),
          _buildStory,
          _ruler(),
          _buildPost("images/pic/02.jpg","images/pic/02.jpg"),
          _buildPost("images/pic/03.jpg","images/pic/03.jpg"),
          _buildPost("images/pic/04.jpg","images/pic/04.jpg"),
          _buildPost("images/pic/05.jpg","images/pic/05.jpg"),
          _buildPost("images/pic/06.jpg","images/pic/06.jpg"),
          _buildPost("images/pic/07.jpg","images/pic/07.jpg"),
          _buildPost("images/pic/08.jpg","images/pic/08.jpg"),
          _buildPost("images/pic/09.jpg","images/pic/09.jpg"),
          _buildPost("images/pic/010.jpg","images/pic/010.jpg"),
        ],
      ),
    );
  }
  get _headerStater{
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              _buildBoxStater,
              SizedBox(width: 10,),
              _textStater
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8,right: 8,left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _boxlive("images/icon/live.png","Live"),
              _boxlive("images/icon/image.png","Photo"),
              _boxlive("images/icon/camera.png","Room"),
            ],
          ),
        )
      ],
    );
  }
  get _buildBoxStater{
    return Container(
      height: 100,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("images/pic/02.jpg"),
                fit: BoxFit.cover
              )
            ),
          )
        ],
      ),
    );
  }
  get _textStater{
    return Container(
      width: 280,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          style: TextStyle(fontSize: 18),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(fontSize: 18),
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
  _boxlive(String image,String text){
    return Container(
      width: 110,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              child: Image.asset(image),
            ),
            SizedBox(width: 2,),
            Text(text),
          ],
        ),
      ),
    );
  }
  _ruler(){
    return Container(
      width: double.infinity,
      height: 10,
      color: Colors.grey[200],
    );
  }
  get _buildStory{
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 230 ,
        child: Row(
          children: [
            _buildItemStory("Name","images/pic/02.jpg","images/pic/02.jpg"),
            _buildItemStory("Name","images/pic/03.jpg","images/pic/03.jpg"),
            _buildItemStory("Name","images/pic/04.jpg","images/pic/04.jpg"),
            _buildItemStory("Name","images/pic/05.jpg","images/pic/05.jpg"),
            _buildItemStory("Name","images/pic/06.jpg","images/pic/06.jpg"),
            _buildItemStory("Name","images/pic/07.jpg","images/pic/07.jpg"),
            _buildItemStory("Name","images/pic/08.jpg","images/pic/08.jpg"),
            _buildItemStory("Name","images/pic/09.jpg","images/pic/09.jpg"),
            _buildItemStory("Name","images/pic/010.jpg","images/pic/010.jpg"),
          ],
        ),
      ),
    );
  }
  _buildItemStory(String name,String image1,String image2){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 130,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(image1),
                    fit: BoxFit.cover
                )
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(name,style: TextStyle(color: Colors.white,fontSize: 17),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  shape: BoxShape.circle
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13,top: 12.5,bottom: 8,right: 8),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(image2),
                  fit: BoxFit.cover
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 2
                  )
                ]
              ),
            ),
          )
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
  _ProfileUser(String profile){
    return Container(
      height: 100,
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
                  SizedBox(width: 150,),
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
