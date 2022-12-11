

import 'package:app_comet_hackathon/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
      title: Textframe(text: 'Profile', fontSize: 20, fontWeight: FontWeight.w500 ),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      ),
    ),
    body: SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[


                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            child:  Container(
                              height: 150,
                              width: 150,

                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(

                                      image: NetworkImage("https://source.unsplash.com/random/200x200") ,
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            onPressed: () => () {},
                          ),
                        ),

                        Container(
                          height: 160,
                          width: 140,


                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                            Container(
                            height: 50,
                            width: 80,

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("name: "),
                                    Text("Long"),
                                  ],
                                ),
                            ),
                                Container(
                                  height: 50,
                                  width: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Gender: "),
                                      Text("male"),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Carreer: "),
                                      Text("data"),
                                    ],
                                  ),
                                ),
                              ],
                          ),


                        ),



                      ],

                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10.0),
            Align(
                alignment: Alignment.center,
                // child: ImagePickerFrave()
            ),

            SizedBox(height: 15.0),
            // Text('Activity' ),
            Textframe(text: 'Activity', fontSize: 15, fontWeight: FontWeight.w500 ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.center,
              height: 50,


              decoration: BoxDecoration(
                // color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(4.0)
              ),

              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, i)
                => InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,


                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 10.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xff5469D4).withOpacity(.1),
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    // child: Textframe(text: "LONGDER"),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        child:  Container(
                          height: 60,
                          width: 60,

                          decoration: BoxDecoration(
                              shape: BoxShape.circle,

                          ),
                          child: Textframe(text: "Gamer"),
                        ),
                        onPressed: () => () {},
                      ),
                    ),

                  ),
                ),
              ),


            ),
            SizedBox(height: 10.0),
            Textframe(text: 'Inotroduce Self', fontSize: 15, fontWeight: FontWeight.w500 ),
            Image(image: NetworkImage("https://source.unsplash.com/random/200x200")),
            SizedBox(height: 10.0),

            SizedBox(height: 10.0),

            Textframe(text: 'Past Event', fontSize: 15, fontWeight: FontWeight.w500 ),
            SizedBox(height: 10.0),
            Container(
              alignment: Alignment.center,
              height: 300,
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                children: [
                Container(
                alignment: Alignment.center,
                height: 60,
                // width: 140,
                // padding: EdgeInsets.all(10.0),

                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(4.0)
                ),
                ),
                  SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    // width: 140,
                    // padding: EdgeInsets.all(10.0),

                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    // width: 140,
                    // padding: EdgeInsets.all(10.0),

                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4.0)
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // ),
                ],

              ),
            ),


          ],
      ),
    ),
  );
  }
}


class _ListSub extends StatelessWidget {




  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i)
        => Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name"),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Gender"),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Carreer"),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }


}


class textinfo {
  String? Name;
  String? Gender;
  String? Carreer;
}