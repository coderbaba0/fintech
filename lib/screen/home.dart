import 'package:banking/screen/profile/my_profile.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'notifications/notifications.dart';

class Home_Widget extends StatefulWidget {
  const    Home_Widget({Key? key}) : super(key: key);

  @override
  State<Home_Widget> createState() => _Home_WidgetState();
}

class _Home_WidgetState extends State<Home_Widget> {
  List _imglist = ['images/slid.jpg'];
  List _list=["images/bob.png","images/hdfc.png","images/ko.png","images/hdfc.png"];
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                 ),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyProfile_Widget()));
                },
                child: Icon(
                  Icons.menu,
                  size: 30,
                  // color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              width: _size.width * 0.02,
            ),
            Text(
              "Hi , ",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              width: _size.width * 0.02,
            ),
            Text(
              "Abhishek !",
              style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: 
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Notifications()));
              },
              child: Badge(smallSize: 10,
                  child: Image.asset("images/bell.png",width: 25,color: Theme.of(context).primaryColor,)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
         child:
         // Stack(children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 0),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFFCBEEBA),
                              Color(0xFFFFB6B6),
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.attach_money_sharp,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "TOTAL BALANCE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "₹ 10,525.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                           fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                              Spacer(),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green, // background (button) color// foreground (text) color
                                  ),
                                  onPressed: () {

                                  },
                                  child: Text(
                                    "PAY NOW",
                                    style: TextStyle(
                                      fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: _size.height * 0.01,
                          ),
                          Divider(
                            thickness: 1.5,
                            color: Colors.black12,
                          ),

                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_wallet_outlined,size: 35,color: Colors.black54
                                    ,)),
                                  Text(
                                    "Wallet",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.payments_outlined,size: 35,color: Colors.black54)),

                                  Text(
                                    "Request",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.wallet_giftcard,size: 35,color: Colors.black54)),
                                  Text(
                                    "Earned Coin",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54
                                       ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_2,size: 35,color: Colors.black54)),

                                  Text(
                                    "Share QR",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54
                                       ),
                                  ),
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFFCBEEBA),
                                    Color(0xFFFFB6B6),
                                  ])),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.people_outline_rounded,
                                  size: 40,
                                  color: Colors.black.withOpacity(0.5),
                                ),

                                Text(
                                  "TODAY\n Buyers",
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 12),
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFCBEEBA),
                                      Color(0xFFFFB6B6),
                                    ])),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.multiline_chart,
                                    size: 40,
                                    color: Colors.black.withOpacity(0.5),
                                  ),

                                  Text(
                                    "Seller\n Analytics",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 12),
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Card(

                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFCBEEBA),
                                      Color(0xFFFFB6B6),
                                    ])),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.explore,
                                    size: 40,
                                    color: Colors.black.withOpacity(0.5),
                                  ),

                                  Text(
                                    "More\n Explore",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 12),
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, right: 8),
              //   child: SizedBox(
              //     height: MediaQuery.of(context).size.height * 0.17,
              //     width: double.infinity,
              //     child: CarouselSlider(
              //       items: _imglist
              //           .map(
              //             (item) => Container(
              //               margin: const EdgeInsets.symmetric(horizontal: 10),
              //               child: ClipRRect(
              //                 borderRadius: BorderRadius.circular(30),
              //                 child: Image.asset(
              //                   item,
              //                   fit: BoxFit.cover,
              //                   width: double.infinity,
              //                 ),
              //               ),
              //             ),
              //           )
              //           .toList(),
              //       options: CarouselOptions(
              //           scrollPhysics: const BouncingScrollPhysics(),
              //           autoPlay: true,
              //           aspectRatio: 16 / 5,
              //           viewportFraction: 1.3,
              //           onPageChanged: (index, reason) {
              //             // setState((){
              //             //   currentIndex=index;
              //             // });
              //           }),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "LOAN SERVICES",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: _size.height * 0.13,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: GridView.builder(
                      itemCount: 4,
                      // shrinkWrap: true,
                     // scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisExtent: 100,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius:26,
                                backgroundColor:Color(0xFF336B18),
                                child: Icon(Icons.price_change),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Flexible(
                                  child: Text(
                                "Home \nLoan",
                                maxLines: 2,
                                    textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12),
                                  )),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "BANKING SERVICES",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: _size.height * 0.25,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: GridView.builder(
                      itemCount: 8,
                      // shrinkWrap: true,
                      // scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisExtent: 100,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius:26,
                                backgroundColor:Color(0xB40CF5CF),
                                child: Icon(Icons.fingerprint),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Flexible(
                                  child: Text(
                                    "Aadhar \nPay",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 12),
                                  )),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "RECHARGE & BILL PAYMENTS",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: _size.height * 0.25,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: GridView.builder(
                      itemCount: 8,
                      // shrinkWrap: true,
                      // scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisExtent: 100,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 2),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius:26,
                                backgroundColor:Color(0xFF551388),
                                child: Icon(Icons.water_drop_outlined),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Flexible(
                                  child: Text(
                                    "Water  \n Bill",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 12),
                                  )),
                            ],
                          ),
                        );
                      }),
                ),
              ),

              Container(
                width: _size.width,
                // color: Color(0xFFEAD8FC),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BANK PARTNERS",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 180,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Container(
                                      width: _size.width * 0.2,
                                      height: _size.height * 0.1,
                                      child: Card(
                                        child: Image.asset(_list[index]),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: _size.width * 0.2,
                                      child: Text(
                                        "KOTAK BANK",
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w500),
                                      )),
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, top: 0, right: 15, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Store Services",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 0,bottom: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.19,
                  width: double.infinity,
                  child: CarouselSlider(
                    items: _imglist
                        .map(
                          (item) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    )
                        .toList(),
                    options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 16 / 8,
                        onPageChanged: (index, reason) {
                          // setState((){
                          //   currentIndex=index;
                          // });
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       left: 15, top: 15, right: 15, bottom: 10),
              //   child: Row(
              //     children: [
              //       Text(
              //         "Featured Videos",
              //         style: TextStyle(fontSize: 18),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0, right: 8),
              //   child: Card(
              //     color: Color(0xFFAA86D9),
              //     child: Padding(
              //       padding: const EdgeInsets.all(15),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           SizedBox(
              //             width: 100,
              //             height: 15,
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Container(
              //                 width: _size.width * 0.4,
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(30),
              //                   color: Color(0xFFEDDDF8),
              //                 ),
              //                 child: Padding(
              //                   padding: const EdgeInsets.only(
              //                       left: 8.0, right: 8, top: 5, bottom: 5),
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceEvenly,
              //                     children: [
              //                       Image.asset(
              //                         "images/youtube.png",
              //                         height: 40,
              //                         width: 40,
              //                       ),
              //                       Text(
              //                         "Youtube",
              //                         style: TextStyle(
              //                           color: Colors.black,
              //                             fontSize: 17,
              //                             fontWeight: FontWeight.w400),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //               Image.asset(
              //                 "images/insta.png",
              //                 height: 45,
              //                 width: 45,
              //               ),
              //               Image.asset(
              //                 "images/facebook.png",
              //                 height: 45,
              //                 width: 45,
              //               ),
              //               Image.asset(
              //                 "images/twitter.png",
              //                 height: 45,
              //                 width: 45,
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             height: 20,
              //           ),
              //           Container(
              //               width: _size.width * 1,
              //               height: _size.height * 0.07,
              //               child: ElevatedButton(
              //                   onPressed: () {},
              //                   child: Text("FOLLOW US ON TELEGRAM"))),
              //           SizedBox(
              //             height: 15,
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(height: _size.height*0.12,)
            ],
          ),
      ),
    );
  }
}
