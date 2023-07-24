import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyProfile_Widget()));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.person,
                     color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: _size.width * 0.03,
            ),

            Text(
              "Abhishek",
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
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Notifications()));
              },
              child:IconButton(onPressed: (){

              },icon: Icon(Icons.logout,color: Theme.of(context).primaryColor,),),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0,left: 8,right: 8),
          child: Column(
            children: [
              Container(
                  width: _size.width * 1,
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
                                radius: 15,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.wallet_outlined,
                                  size: 25,
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
                                      "Wallet Balance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Text(
                                "₹ 10,000.00",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              )
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
                              Container(
                                height: _size.height * 0.08,
                                width: MediaQuery.of(context).size.width/2.50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.withOpacity(0.2)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Basic",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "₹ 5,000.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: _size.height * 0.08,
                                 width: MediaQuery.of(context).size.width/2.50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Premium",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "₹ 5,000.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.smart_toy_outlined,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Purchesed Coins",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.green),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                            color: Colors.black12,
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
                                            backgroundColor:Color(0xFFFFFFFF).withOpacity(0.6),
                                            child: Icon(Icons.currency_bitcoin,color: Colors.orange,),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Flexible(
                                              child: Text(
                                                "Bitcoin",
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(fontSize: 12,color: Colors.black),
                                              )),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                          child: Column(
                            children: [
                              Text("My Referrals",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Theme.of(context).primaryColor,),),
                              Text("00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                          child: Column(
                            children: [
                              Text("Referral Income",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color:Theme.of(context).primaryColor,),),
                              Text("₹ 00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  width: _size.width * 1,
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Refer and Earn 10% Extra",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,fontSize: 17),
                                  ),
                                  Icon(Icons.info_outline,size: 25,color: Colors.green,)
                                ],
                              ),
                              Container(
                                width: _size.width*0.7,
                                child: Text(
                                  "Hello User! Refer Intrust app to Your freinds and family to earn extra 20% of their earning",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color:  Colors.black),
                                  maxLines: 2,overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(height: _size.height*0.01,),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Referral Code",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      Container(
                                        width: _size.width*0.3,
                                        child: Text(
                                          "2010121",
                                          maxLines: 2,overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color:  Colors.black),textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 40,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    alignment: Alignment.center,
                                    child: Icon(Icons.copy,color: Colors.white,),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {

                                      },
                                      child: Text(
                                        "REFFER NOW",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
             // SizedBox(height: 10,),
             // Text("Refer Now",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
             // Container(
             //   width: _size.width*0.7,
             //   child: Text("Refer Intrust now to add member in your team and Earn more",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color:Theme.of(context).primaryColor,),),),
             //  Image.asset("images/reffer.png",width: _size.width*0.8,height: _size.height*0.3,)

            ],
          ),
        ),
      ),
    );
  }
}
