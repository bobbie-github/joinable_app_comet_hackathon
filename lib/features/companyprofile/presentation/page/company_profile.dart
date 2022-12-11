
// import 'package:app_comet_hackathon/core/models/CategoryAllResponse.dart';
import 'package:app_comet_hackathon/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CompanyProfilePage extends StatefulWidget {
  const CompanyProfilePage({Key? key}) : super(key: key);

  @override
  State<CompanyProfilePage> createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage> {
  late TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Textframe(text: 'Company Profile', fontSize: 20, fontWeight: FontWeight.w500 ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(4.0)
                  ),
                  child: Image.network("https://source.unsplash.com/random/200x200")
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                height: 50,


                decoration: BoxDecoration(
                    color: Colors.grey[200],
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
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                      child: Textframe(text: "L"),

                    ),
                  ),
                ),


              ),
              SizedBox(height: 10.0),


              Container(
                alignment: Alignment.center,
                height: 300,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                  children: [

                    Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.album),
                              title: Text('The Nightingale'),
                              subtitle: Text(' Julie Gable.'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Textframe(text: '12:00',color: Colors.blue,),
                              ],
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 10.0),

                    Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.album),
                              title: Text('The Enchanted'),
                              subtitle: Text('Music .'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Textframe(text: '12:00',color: Colors.blue,),
                              ],
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 10.0),
                    Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.album),
                              title: Text('The'),
                              subtitle: Text('Sidney Stein.'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Textframe(text: '8:00',color: Colors.blue,),
                              ],
                            ),

                          ],
                        )
                    ),
                    SizedBox(height: 10.0),
                    Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.album),
                              title: Text('The En'),
                              subtitle: Text('Lyrics'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Textframe(text: '9:30',color: Colors.blue,),
                              ],
                            ),

                          ],
                        )
                    ),
                    SizedBox(height: 10.0),
                    // ),
                  ],

                ),
              ),


            ],
          ),
        ),
      ),


    );
  }
}