
// import 'package:app_comet_hackathon/core/models/CategoryAllResponse.dart';
import 'package:app_comet_hackathon/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  late TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Textframe(text: 'Employee', fontSize: 20, fontWeight: FontWeight.w500 ),
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
            alignment: Alignment.centerLeft,
             child: Textframe(text: "Same Gareer",fontSize: 10,),
          ),
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
                      // margin: EdgeInsets.only(right: 10.0),
                      // padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          // color: Color(0xff5469D4).withOpacity(.1),
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
                              image: DecorationImage(

                                  image: NetworkImage("https://source.unsplash.com/random/200x200") ,
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        onPressed: () => () {},
                      ),
                    ),

                    ),
                  ),
                ),


              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child:   Textframe(text: "Same Activity",fontSize: 10,),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                // width: 140,
                // padding: EdgeInsets.all(10.0),

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
                    // onTap: () => Navigator.push(context, routeFrave(page: SearchForCategoryPage(idCategory: category[i].id, category: category[i].category ))),

                    child: Container(
                      alignment: Alignment.center,
                      // margin: EdgeInsets.only(right: 10.0),
                      // padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          // color: Color(0xff5469D4).withOpacity(.1),
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      // child: Textframe(text: "LONGDER"),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          child:  Container(
                            height: 60,
                            width: 60,
                            // padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  // image: NetworkImage( URLS.BASE_URL + state.user!.image.toString()),
                                  //   image: NetworkImage( widget.product.ownerimage.toString()),
                                    image: NetworkImage("https://source.unsplash.com/random/200x200") ,
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          onPressed: () => () {},
                        ),
                      ),

                    ),
                  ),
                ),


              ),

              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                height: 300,
                child:  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: 3 / 2,

                        crossAxisSpacing: 25,
                        mainAxisSpacing: 20),
                        // crossAxisCount: 2,
                        // crossAxisSpacing: 25,
                        // mainAxisSpacing: 20,
                        // mainAxisExtent: 320),
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        // height: 52.0,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(4)),

                        // child: Text("Chanthavong "),
                        // child :    Card(
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //
                        //       children: <Widget>[
                        //         InkWell(
                        //           splashColor: Colors.transparent,
                        //           highlightColor: Colors.transparent,
                        //           // onTap: () => Navigator.push(context, routeFrave(page: SearchForCategoryPage(idCategory: category[i].id, category: category[i].category ))),
                        //
                        //           child: Container(
                        //             alignment: Alignment.center,
                        //             // margin: EdgeInsets.only(right: 10.0),
                        //             // padding: EdgeInsets.symmetric(horizontal: 20.0),
                        //             decoration: BoxDecoration(
                        //               // color: Color(0xff5469D4).withOpacity(.1),
                        //                 borderRadius: BorderRadius.circular(50.0)
                        //             ),
                        //             // child: Textframe(text: "LONGDER"),
                        //             child: Align(
                        //               alignment: Alignment.center,
                        //               child: TextButton(
                        //                 child:  Container(
                        //                   height: 50,
                        //                   width: 50,
                        //                   // padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
                        //                   decoration: BoxDecoration(
                        //                       shape: BoxShape.circle,
                        //                       image: DecorationImage(
                        //                         // image: NetworkImage( URLS.BASE_URL + state.user!.image.toString()),
                        //                         //   image: NetworkImage( widget.product.ownerimage.toString()),
                        //                           image: NetworkImage("https://source.unsplash.com/random/200x200") ,
                        //                           fit: BoxFit.cover
                        //                       )
                        //                   ),
                        //                 ),
                        //                 onPressed: () => () {},
                        //               ),
                        //             ),
                        //
                        //           ),
                        //         ),
                        //         const ListTile(
                        //           // leading: Icon(Icons.album),
                        //
                        //           title: Textframe(text: 'The Enchanted Nightingale',fontSize: 10,),
                        //           subtitle: Textframe(text: 'Music by Julie Gable. Lyrics by Sidney Stein.',fontSize: 10,),
                        //         ),
                        //
                        //       ],
                        //     )
                        // ),
                        child: GestureDetector(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              // Container(
                              //
                              //
                              //   child: Hero(
                              //       tag: 1,
                              //       // child: Image.network(URLS.BASE_URL + listProduct[i].picture , height: 150)
                              //       child: Image.network("https://source.unsplash.com/random/200x200" , height: 150)
                              //   ),
                              // ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      // image: NetworkImage( URLS.BASE_URL + authBloc.state.user!.image.toString())

                                      image: NetworkImage("https://source.unsplash.com/random/200x200"),
                                  )
                                ),
                              ),
                              Container(
                                child: (
                                    Textframe(text: "Chanthavong " , textOverflow: TextOverflow.ellipsis, fontWeight: FontWeight.w500, fontSize: 12 )
                                ),
                              ),
                              SizedBox(height: 5.0),
                              // TextFrave(text: '\$ ${listProduct[i].price.toString()}', fontSize: 16, fontWeight: FontWeight.w500 )
                              Container(
                                child: (
                                    Textframe(text: "Position" , fontSize: 12, fontWeight: FontWeight.w500 )
                                ),
                              ),


                            ],
                          ),
                        ),
                      );
                    }),
              ),


            ],
          ),
        ),
      ),


    );
  }
}