import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Leads_Widget extends StatefulWidget {
  const Leads_Widget({Key? key}) : super(key: key);




  @override
  State<Leads_Widget> createState() => _Leads_WidgetState();
}

class _Leads_WidgetState extends State<Leads_Widget> with TickerProviderStateMixin{
  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }




  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5,bottom: 15,left: 10,right: 10),
        child: Container(
          height:  MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*1,
          child: Column(
            children: [
              SizedBox(height: _size.height*0.03,),
              Center(
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                    ),
                    child: TabBar(
                      controller: _tabController,
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      tabs: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          child: Tab(child: Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10),
                            child: Text("My Leads",style: TextStyle( fontFamily: "Poppins",fontSize: 17,color: Theme.of(context).primaryColor),),
                          ),),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          child: Tab(child: Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10),
                            child: Text("Potential Leads",style: TextStyle( fontFamily: "Poppins",fontSize: 17,color:  Theme.of(context).primaryColor),),
                          ),),
                        ),
                      ],
                    indicatorSize: TabBarIndicatorSize.tab,
                    )
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children:[
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: _size.width * 1,
                              child: Card(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF086C57),
                                            Color(0xFF199F85)
                                          ])),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Total Added Leads",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                        fontWeight: FontWeight.w500,
                                                        color: Colors.white,fontSize: 16),
                                                  ),
                                                  Text(
                                                    "See all leads here",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            ElevatedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "0",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w700,fontSize: 18),
                                                ))
                                          ],
                                        ),
                                        SizedBox(height: _size.height*0.02,),
                                        Divider(
                                          thickness: 1.5,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: _size.height*0.02,),

                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "0",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white.withOpacity(0.9)),
                                                ),
                                                Container(
                                                  width: _size.width*0.15,

                                                  child: Text(
                                                    "LEADS SUCCESS",
                                                    maxLines: 2,overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w400,

                                                        color: Colors.white.withOpacity(0.9)),textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "0",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.white.withOpacity(0.9)),
                                                ),
                                                Container(
                                                  width: 70,

                                                  child: Text(
                                                    "LEADS IN PROCESS",
                                                    maxLines: 2,overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.white.withOpacity(0.9)),textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "0",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white.withOpacity(0.9)),
                                                ),
                                                Container(
                                                  width: 70,

                                                  child: Text(
                                                    "LEADS REJECTED",
                                                    maxLines: 2,overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.white.withOpacity(0.9)),textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "0",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.white.withOpacity(0.9)),
                                                ),
                                                Container(
                                                  width: 70,

                                                  child: Text(
                                                    "ACTION REQUIRED",
                                                    maxLines: 2,overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w400,
                                                        color: Colors.white.withOpacity(0.9)),textAlign: TextAlign.center,
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
                              )),
                        ),
                       Spacer(),
                        Text("Add Lead & Earn",style: TextStyle(fontSize: 18,fontFamily: "Poppins",),),

                        Text("Your leads will be shown here.",style: TextStyle(fontFamily: "Poppins",fontSize: 16,color:  Theme.of(context).primaryColor),),
                        Lottie.asset("images/winner.json",width: _size.height*0.5,height: _size.height*0.25),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Add Leads Now",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,fontSize: 18,),
                            )),
                        SizedBox(height: _size.height*0.1,)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/grow.png",width: _size.width*0.5,height:_size.height*0.25),
                        Text("Add Lead & Earn",style: TextStyle( fontFamily: "Poppins",fontSize: 20,fontWeight: FontWeight.w600),),
                        SizedBox(height: 10,),
                        Container(
                          width: _size.width*0.7,
                            child: Text("Potential leads will be shown here, Add customer and know your potential earning",textAlign: TextAlign.center,style: TextStyle( fontFamily: "Poppins",fontSize: 15,fontWeight: FontWeight.w400,color: Theme.of(context).primaryColor),),),

                         SizedBox(height: _size.height*0.03),
                        ElevatedButton(

                            onPressed: () {},
                            child: Text(
                              "Add Leads Now",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,fontSize: 18,color: Theme.of(context).primaryColor,),
                            )),
                      ],
                    )
                    

                  ],
                ),
              ),
              SizedBox(height: _size.height*0.08,)

            ],
          ),
        ),
      ),
    );
  }
}
