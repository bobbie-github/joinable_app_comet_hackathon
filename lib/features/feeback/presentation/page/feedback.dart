
// import 'package:app_comet_hackathon/core/models/CategoryAllResponse.dart';
import 'package:app_comet_hackathon/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  late TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Textframe(text: 'FeedBack', fontSize: 20, fontWeight: FontWeight.w500 ),
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
                height: 100,
                // width: 140,
                // padding: EdgeInsets.all(10.0),

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
                    // onTap: () => Navigator.push(context, routeFrave(page: SearchForCategoryPage(idCategory: category[i].id, category: category[i].category ))),

                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 10.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Color(0xff5469D4).withOpacity(.1),
                          borderRadius: BorderRadius.circular(4.0)
                      ),
                      child: Textframe(text: "LONGDER"),


                    ),
                  ),
                ),


              ),
              SizedBox(height: 10.0),
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
              // _ListFAQnew(),
              // _ListProductsDetails(),

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
                              title: Text('The Enchanted Nightingale'),
                              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
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
                              title: Text('The Enchanted Nightingale'),
                              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
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
                              title: Text('The Enchanted Nightingale'),
                              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
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





      // body: SafeArea(
      //   child: ListView(
      //     physics: BouncingScrollPhysics(),
      //     padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      //     children: [
      //       Expanded(
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [
      //             Container(
      //               height: 220,
      //               width: MediaQuery.of(context).size.width,
      //               decoration: BoxDecoration(
      //                   color: Colors.grey[50],
      //                   borderRadius: BorderRadius.circular(20.0)
      //               ),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: <Widget>[
      //                   Container(
      //                     height: 160,
      //                     width: 140,
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(4.0),
      //
      //                       // image: DecorationImage(
      //                       //
      //                       //   image: NetworkImage("https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc="),
      //                       // )
      //                     ),
      //                     child: Image.network("https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc="),
      //                   ),
      //
      //                   Container(
      //                     height: 160,
      //                     width: 140,
      //
      //                     // decoration: BoxDecoration(
      //                     //   borderRadius: BorderRadius.circular(4.0),
      //                     //
      //                     //
      //                     // ),
      //                     // child: Image.network("https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc="),
      //
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: <Widget>[
      //                         Container(
      //                           height: 50,
      //                           width: 80,
      //
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                             children: [
      //                               Text("name: "),
      //                               Text("Long"),
      //                             ],
      //                           ),
      //                         ),
      //                         Container(
      //                           height: 50,
      //                           width: 80,
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                             children: [
      //                               Text("Gender: "),
      //                               Text("male"),
      //                             ],
      //                           ),
      //                         ),
      //                         Container(
      //                           height: 50,
      //                           width: 80,
      //                           child: Row(
      //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                             children: [
      //                               Text("Carreer: "),
      //                               Text("data"),
      //                             ],
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //
      //                     // child: _ListSub(),
      //                   ),
      //
      //
      //                   // Container(
      //                   //   height: 50,
      //                   //   width: 60,
      //                   //   // padding: EdgeInsets.all(10.0),
      //                   //
      //                   //   decoration: BoxDecoration(
      //                   //     // color: Colors.grey[200],
      //                   //
      //                   //       color: Colors.orangeAccent,
      //                   //
      //                   //       borderRadius: BorderRadius.circular(15.0),
      //                   //     image: DecorationImage(
      //                   //
      //                   //       image: NetworkImage(""),
      //                   //     )
      //                   //   ),
      //                   //   child: Align(
      //                   //     alignment: Alignment.center,
      //                   //
      //                   //
      //                   //
      //                   //     // child: TextButton(
      //                   //     //
      //                   //     //   child: Column(
      //                   //     //     // mainAxisAlignment: MainAxisAlignment.center,
      //                   //     //     crossAxisAlignment: CrossAxisAlignment.center,
      //                   //     //     mainAxisAlignment: MainAxisAlignment.center,
      //                   //     //     children: [
      //                   //     //       // transfer_within_a_station_outlined
      //                   //     //       Icon(Icons.menu_book_sharp, color: Colors.white, size: 13),
      //                   //     //       SizedBox(height: 0.1),
      //                   //     //       Textframe(text: 'ຕຳລາ', color: Colors.black, fontSize: 14 ),
      //                   //     //
      //                   //     //       // TextFrave(text: '\ ${oCcy.format(widget.product.price * state.quantity)}', color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
      //                   //     //
      //                   //     //     ],
      //                   //     //   ),
      //                   //     //   //     ],
      //                   //     //   // ),
      //                   //     //   // onPressed: () => Navigator.pushReplacement(context, routeFrave(page: BagOwnerAmuletClientPage(ownerid: widget.product.ownerid.toString(),ownerimage: widget.product.ownerimage.toString()))),
      //                   //     //   onPressed: () => {},
      //                   //     // ),
      //                   //
      //                   //   ),
      //                   // ),
      //
      //                   // Container(
      //                   //   height: 50,
      //                   //   width: 60,
      //                   //   // padding: EdgeInsets.all(10.0),
      //                   //
      //                   //   decoration: BoxDecoration(
      //                   //     // color: Colors.grey[200],
      //                   //       color: Colors.green,
      //                   //       borderRadius: BorderRadius.circular(15.0)
      //                   //   ),
      //                   //
      //                   //   // child: Align(
      //                   //   //   alignment: Alignment.center,
      //                   //   //
      //                   //   //
      //                   //   //   // child: TextButton(
      //                   //   //   //
      //                   //   //   //   child: Column(
      //                   //   //   //     // mainAxisAlignment: MainAxisAlignment.center,
      //                   //   //   //     crossAxisAlignment: CrossAxisAlignment.center,
      //                   //   //   //     mainAxisAlignment: MainAxisAlignment.center,
      //                   //   //   //     children: [
      //                   //   //   //       // transfer_within_a_station_outlined
      //                   //   //   //       Icon(Icons.shopping_cart_checkout_sharp, color: Colors.white, size: 13),
      //                   //   //   //       SizedBox(height: 0.1),
      //                   //   //   //       Textframe(text: 'ເພີ່ມ', color: Colors.black, fontSize: 14 ),
      //                   //   //   //      Container(
      //                   //   //   //        height: 30,
      //                   //   //   //        width: 30,
      //                   //   //   //        decoration: BoxDecoration(
      //                   //   //   //          shape: BoxShape.rectangle,
      //                   //   //   //          image: DecorationImage(
      //                   //   //   //            image: NetworkImage("assets/images/others/no-owner.jpg")
      //                   //   //   //          )
      //                   //   //   //        )
      //                   //   //   //      )
      //                   //   //   //       // TextFrave(text: '\ ${oCcy.format(widget.product.price * state.quantity)}', color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
      //                   //   //   //
      //                   //   //   //     ],
      //                   //   //   //   ),
      //                   //   //   //   //     ],
      //                   //   //   //   // ),
      //                   //   //   //   // onPressed: () => Navigator.pushReplacement(context, routeFrave(page: BagOwnerAmuletClientPage(ownerid: widget.product.ownerid.toString(),ownerimage: widget.product.ownerimage.toString()))),
      //                   //   //   //   onPressed: () => {},
      //                   //   //   // ),
      //                   //   //
      //                   //   // ),
      //                   // ),
      //                   //       Form(
      //                   //         key: _keyForm,
      //                   // child: ListView(
      //                   //     // physics: BouncingScrollPhysics(),
      //                   //     // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      //                   //     children: [
      //                   //       TextFrave(text: 'ຜູ້ຮັບ'),
      //                   //       ],
      //                   //       ),
      //                   //       ),
      //                 ],
      //
      //               ),
      //             ),
      //
      //           ],
      //         ),
      //       ),
      //       SizedBox(height: 10.0),
      //       Align(
      //         alignment: Alignment.center,
      //         // child: ImagePickerFrave()
      //       ),
      //       // SizedBox(height: 20.0),
      //       // Center(
      //       //     child: Text("authBloc.state.user!.firstName!",)
      //       // ),
      //       // Center(
      //       //     child: TextFrave(text: authBloc.state.user!.lastName!, fontSize: 25, fontWeight: FontWeight.w500 )
      //       // ),
      //       // SizedBox(height: 5.0),
      //       // Center(
      //       //
      //       //   child: Text("authBloc.state.user!.email!",)
      //       // ),
      //       SizedBox(height: 15.0),
      //       // Text('Activity' ),
      //       Textframe(text: 'Activity', fontSize: 25, fontWeight: FontWeight.w500 ),
      //       SizedBox(height: 10.0),
      //
      //       SizedBox(height: 20.0),
      //       // FutureBuilder<List<Category>>(
      //       //   // future: categoryController.getAllCategories(),
      //       //   builder: (context, snapshot) {
      //       //
      //       //     final List<Category>? category = snapshot.data;
      //       //     // print(category);
      //       //     return !snapshot.hasData
      //       //         ? Shimmerframe()
      //       //         : Container(
      //       //       height: 45,
      //       //       child: ListView.builder(
      //       //         physics: BouncingScrollPhysics(),
      //       //         scrollDirection: Axis.horizontal,
      //       //         itemCount: category!.length,
      //       //         itemBuilder: (context, i)
      //       //         => InkWell(
      //       //           splashColor: Colors.transparent,
      //       //           highlightColor: Colors.transparent,
      //       //           // onTap: () => Navigator.push(context, routeFrave(page: SearchForCategoryPage(idCategory: category[i].id, category: category[i].category ))),
      //       //
      //       //           child: Container(
      //       //             alignment: Alignment.center,
      //       //             margin: EdgeInsets.only(right: 10.0),
      //       //             padding: EdgeInsets.symmetric(horizontal: 20.0),
      //       //             decoration: BoxDecoration(
      //       //                 color: Color(0xff5469D4).withOpacity(.1),
      //       //                 borderRadius: BorderRadius.circular(25.0)
      //       //             ),
      //       //             child: Textframe(text: category[i].category),
      //       //           ),
      //       //         ),
      //       //       ),
      //       //     );
      //       //   },
      //       // ),
      //       SizedBox(height: 20.0),
      //
      //       SizedBox(height: 15.0),
      //
      //       Textframe(text: 'Intorduce My Self', fontSize: 15, fontWeight: FontWeight.w500 ),
      //       SizedBox(height: 10.0),
      //
      //
      //       SizedBox(height: 15.0),
      //
      //       Textframe(text: 'Past Event', fontSize: 15, fontWeight: FontWeight.w500 ),
      //       SizedBox(height: 10.0),
      //
      //
      //       SizedBox(height: 15.0),
      //
      //       Textframe(text: 'Link To Sosial', fontSize: 15, fontWeight: FontWeight.w500 ),
      //       SizedBox(height: 10.0),
      //     ],
      //   ),
      // ),
    );
  }
}