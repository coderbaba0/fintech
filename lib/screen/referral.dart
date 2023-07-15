import 'package:flutter/material.dart';

class Referral_Widget extends StatefulWidget {
  const Referral_Widget({Key? key}) : super(key: key);

  @override
  State<Referral_Widget> createState() => _Referral_WidgetState();
}

class _Referral_WidgetState extends State<Referral_Widget> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: _size.height*0.03,),
            Container(
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
                                      color: Colors.white,fontSize: 17),
                                ),

                               Icon(Icons.info_outline,size: 25,color: Colors.white,)
                              ],
                            ),
                            Container(
                              width: _size.width*0.7,
                              child: Text(

                                "Hello Active Advisors! Refer BankSathi app to Your freinds and family to earn extra 10% of their earning",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
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
                                          color:Colors.white),
                                    ),
                                    Container(
                                      width: _size.width*0.3,

                                      child: Text(
                                        "201829282",
                                        maxLines: 2,overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  alignment: Alignment.center,
                                  child: Icon(Icons.copy,color: Colors.white,),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "REFFER NOW",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
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
           SizedBox(height: _size.height*0.1,),
           Text("Refer Now",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
           Container(
             width: _size.width*0.7,
             child: Text("Refer Intrust now to add member in your team and Earn more",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color:Theme.of(context).primaryColor,),),),
            Image.asset("images/reffer.png",width: _size.width*0.8,height: _size.height*0.3,)
          ],
        ),
      ),
    );
  }
}
