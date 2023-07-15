import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Product_Detail extends StatefulWidget {
  const Product_Detail({Key? key}) : super(key: key);

  @override
  State<Product_Detail> createState() => _Product_DetailState();
}

class _Product_DetailState extends State<Product_Detail>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet:  Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          width: _size.width,
          height: _size.height * 0.06,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF70E392),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Share",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              )),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "images/arrow.png",
                  height: 50,
                  width: 30,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Product Detail",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins"),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF086C57), Color(0xFF199F85)])),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Card(
                              child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              "images/ko.png",
                              width: 50,
                              height: 50,
                            ),
                          )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Kotak 811 Savings Account",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white.withOpacity(0.9)),
                          )
                        ],
                      ),
                    ),

                    Divider(
                      thickness: 1.5,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: _size.height * 0.003,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "00",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withOpacity(0.9)),
                              ),
                              Text(
                                "TOTAL EARNING",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.9)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "00",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.9)),
                              ),
                              Text(
                                "TOTAL LEADS",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.9)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "00",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withOpacity(0.9)),
                              ),
                              Text(
                                "TOTAL SALES",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.9)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          TabBar(
            isScrollable: true,
            controller: _tabController,
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      "My Stats",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      "Details",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      "Marketing",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Tab(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      "Training",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      width: _size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFA862D9),
                              radius: 30,
                              child: Text(
                                "₹",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "Poppins",
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Earn ₹315",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Color(0xFFA862D9),
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                    width: _size.width * 0.63,
                                    child: Text(
                                      "On your customer's successfully account opening",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black.withOpacity(0.6)),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: _size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/men.png",
                              height: 60,
                              width: 60,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "No Customer Found",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                            Container(
                                child: Text(
                              "Add customer and earn extra income.Track the details anytime",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            )),
                            SizedBox(height: 20),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFA862D9),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8, top: 10, bottom: 10),
                                  child: Text(
                                    "Add New Customer",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white.withOpacity(0.9)),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),

        ],
      ),
    );
  }
}
