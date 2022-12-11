
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
                                  title: Text('The Enchanted Nightingale'),
                                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                                ),
                                // Row(

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
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                          // Row(

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
                            title: Text('The Enchanted Nightingale'),
                            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                          // Row(

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




class _ListFAQnew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          // return ListTile(
          //     leading: const Icon(Icons.list),
          //     trailing: const Text(
          //       "GFG",
          //       style: TextStyle(color: Colors.green, fontSize: 15),
          //     ),
          //     title: Text("List item $index"));
          return Center( child: Text("TEST"),);
          // Container(
          // alignment: Alignment.center,
          // height: 380,
          // child: ListView(
          //   physics: BouncingScrollPhysics(),
          //   padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
          //   children: [
          //       Card(
          //           child: Column(
          //             mainAxisSize: MainAxisSize.min,
          //             children: <Widget>[
          //               const ListTile(
          //                 leading: Icon(Icons.album),
          //                 title: Text('The Enchanted Nightingale'),
          //                 subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          //               ),
          //               // Row(
          //               //   mainAxisAlignment: MainAxisAlignment.end,
          //               //   children: <Widget>[
          //               //     TextButton(
          //               //       child: const Text('BUY TICKETS'),
          //               //       onPressed: () {/* ... */},
          //               //     ),
          //               //     const SizedBox(width: 8),
          //               //     TextButton(
          //               //       child: const Text('LISTEN'),
          //               //       onPressed: () {/* ... */},
          //               //     ),
          //               //     const SizedBox(width: 8),
          //               //   ],
          //               // ),
          //             ],
          //           )
          //       // ),
          //       // SizedBox(height: 10.0),
          //       //
          //       // // Card(
          //       // //     child: Column(
          //       // //       mainAxisSize: MainAxisSize.min,
          //       // //       children: <Widget>[
          //       // //         const ListTile(
          //       // //           leading: Icon(Icons.album),
          //       // //           title: Text('The Enchanted Nightingale'),
          //       // //           subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          //       // //         ),
          //       // //         // Row(
          //       // //         //   mainAxisAlignment: MainAxisAlignment.end,
          //       // //         //   children: <Widget>[
          //       // //         //     TextButton(
          //       // //         //       child: const Text('BUY TICKETS'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //     TextButton(
          //       // //         //       child: const Text('LISTEN'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //   ],
          //       // //         // ),
          //       // //       ],
          //       // //     )
          //       // // ),
          //       // // SizedBox(height: 10.0),
          //       // //
          //       // //
          //       // // SizedBox(height: 10.0),
          //       // // Card(
          //       // //     child: Column(
          //       // //       mainAxisSize: MainAxisSize.min,
          //       // //       children: <Widget>[
          //       // //         const ListTile(
          //       // //           leading: Icon(Icons.album),
          //       // //           title: Text('The Enchanted Nightingale'),
          //       // //           subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          //       // //         ),
          //       // //         // Row(
          //       // //         //   mainAxisAlignment: MainAxisAlignment.end,
          //       // //         //   children: <Widget>[
          //       // //         //     TextButton(
          //       // //         //       child: const Text('BUY TICKETS'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //     TextButton(
          //       // //         //       child: const Text('LISTEN'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //   ],
          //       // //         // ),
          //       // //       ],
          //       // //     )
          //       // // ),
          //       // // SizedBox(height: 10.0),
          //       // // Card(
          //       // //     child: Column(
          //       // //       mainAxisSize: MainAxisSize.min,
          //       // //       children: <Widget>[
          //       // //         const ListTile(
          //       // //           leading: Icon(Icons.album),
          //       // //           title: Text('The Enchanted Nightingale'),
          //       // //           subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          //       // //         ),
          //       // //         // Row(
          //       // //         //   mainAxisAlignment: MainAxisAlignment.end,
          //       // //         //   children: <Widget>[
          //       // //         //     TextButton(
          //       // //         //       child: const Text('BUY TICKETS'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //     TextButton(
          //       // //         //       child: const Text('LISTEN'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //   ],
          //       // //         // ),
          //       // //       ],
          //       // //     )
          //       // // ),
          //       // // SizedBox(height: 10.0),
          //       // // Card(
          //       // //     child: Column(
          //       // //       mainAxisSize: MainAxisSize.min,
          //       // //       children: <Widget>[
          //       // //         const ListTile(
          //       // //           leading: Icon(Icons.album),
          //       // //           title: Text('The Enchanted Nightingale'),
          //       // //           subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          //       // //         ),
          //       // //         // Row(
          //       // //         //   mainAxisAlignment: MainAxisAlignment.end,
          //       // //         //   children: <Widget>[
          //       // //         //     TextButton(
          //       // //         //       child: const Text('BUY TICKETS'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //     TextButton(
          //       // //         //       child: const Text('LISTEN'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //   ],
          //       // //         // ),
          //       // //       ],
          //       // //     )
          //       // // ),
          //       // // SizedBox(height: 10.0),
          //       // // Card(
          //       // //     child: Column(
          //       // //       mainAxisSize: MainAxisSize.min,
          //       // //       children: <Widget>[
          //       // //         const ListTile(
          //       // //           leading: Icon(Icons.album),
          //       // //           title: Text('The Enchanted Nightingale'),
          //       // //           subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          //       // //         ),
          //       // //         // Row(
          //       // //         //   mainAxisAlignment: MainAxisAlignment.end,
          //       // //         //   children: <Widget>[
          //       // //         //     TextButton(
          //       // //         //       child: const Text('BUY TICKETS'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //     TextButton(
          //       // //         //       child: const Text('LISTEN'),
          //       // //         //       onPressed: () {/* ... */},
          //       // //         //     ),
          //       // //         //     const SizedBox(width: 8),
          //       // //         //   ],
          //       // //         // ),
          //       // //       ],
          //       // //     )
          //       // // ),
          //
          //     // ],
          //   // ),
          //
          // );
        }),
    );


  }
}


class _ListProductsDetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      itemCount: 5,
      separatorBuilder: (_, index) => Divider(),
      itemBuilder: (_, i)
      => Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage( "" )
                  )
              ),
            ),
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Textframe(text: "LongCer", fontWeight: FontWeight.w500 ),
                SizedBox(height: 5.0),
                Textframe(text: 'Quantity: ${10}', color: Colors.grey, fontSize: 17),
              ],
            ),
            Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Textframe(text: '\$ ${1000}'),
                )
            )
          ],
        ),
      ),
    );
  }
}