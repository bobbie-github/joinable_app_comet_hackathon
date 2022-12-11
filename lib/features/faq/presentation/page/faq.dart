
// import 'package:app_comet_hackathon/core/models/CategoryAllResponse.dart';
import 'package:app_comet_hackathon/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  late TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Textframe(text: 'FQA', fontSize: 20, fontWeight: FontWeight.w500 ),
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
            Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 44,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8.0)
                ),
                child: TextFormField(
                  controller: _searchController,
                  onChanged:(value){
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
          ],
            ),
          SizedBox(height: 10.0),
          Container(
          alignment: Alignment.center,
          height: 380,
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
                                  title: Text('The'),
                                  subtitle: Text('Music '),
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
                            subtitle: Text('Music AAAA'),
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
                            title: Text('The CC'),
                            subtitle: Text('Music DDD'),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 10.0),
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



