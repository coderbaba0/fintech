import 'package:flutter/material.dart';

class Offersoncoins extends StatefulWidget {
  const Offersoncoins({Key? key}) : super(key: key);

  @override
  State<Offersoncoins> createState() => _OffersoncoinsState();
}

class _OffersoncoinsState extends State<Offersoncoins> {
  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;

    return Scaffold(
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(bottom: 55),
      //   child: FloatingActionButton(
      //     backgroundColor: Colors.green.withOpacity(0.9),
      //     onPressed: (){
      //       showModalBottomSheet(
      //
      //           context: context, builder: (context)=> Padding(
      //         padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      //         child: SingleChildScrollView(
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text("Filter products by Pincode",style: TextStyle(fontSize: 16),),
      //                   GestureDetector(
      //                     onTap: (){
      //                       Navigator.pop(context);
      //                     },
      //                       child: Icon(Icons.cancel_outlined))
      //                 ],
      //               ),
      //               SizedBox(height: _size.height*0.03,),
      //               TextField(
      //
      //                 decoration: InputDecoration(
      //                   isDense: true,
      //                   label: Text("PinCode"),
      //                   hintText: "Enter Pin Code",
      //                    hintStyle: TextStyle(fontSize: 14),
      //                   border: OutlineInputBorder(
      //                     borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
      //                     borderRadius: BorderRadius.circular(20)
      //                   )
      //                 ),
      //               ),
      //              SizedBox(height: _size.height*0.05,),
      //              Row(
      //                mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                children: [
      //                  Container(
      //                      width: _size.width*0.4,
      //                      height: _size.height*0.08,
      //                      child: ElevatedButton(
      //                          style: ElevatedButton.styleFrom(primary: Colors.grey),
      //                          onPressed: (){
      //                            Navigator.pop(context);
      //                          }, child: Text("Clear",style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: "Poppins"),))),
      //                  Container(
      //                      width: _size.width*0.4,
      //                      height: _size.height*0.08,
      //                      child: ElevatedButton(
      //                          style: ElevatedButton.styleFrom(primary: Color(
      //                              0xFF04218C)),
      //                          onPressed: (){}, child: Text("Filter",style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: "Poppins"),))),
      //                ],
      //              ),
      //               SizedBox(height: 30,)
      //             ],
      //           ),
      //         ),
      //       ));
      //     },child: Icon(Icons.filter_alt,color: Colors.white,),),
      // ),
      appBar:AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: _size.height*0.21,
        title: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Image.asset("images/arrow.png",width: 35,height: 50,color: Theme.of(context).primaryColor,)),
                SizedBox(width: _size.width*0.06,),
                Column(
                  children: [
                    Text("Coins On discount",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                  ],
                ),
                Spacer(),
                Icon(Icons.favorite_border,size: 30,)
              ],
            ),
           SizedBox(height: 10,),
           SizedBox(
             height: 90,
             child: ListView.builder(

               shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context,index){
               return
                 Container(
                   child: Card(
                     shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey.withOpacity(0.3)),borderRadius: BorderRadius.circular(20)),
                     child: Padding(
                       padding: const EdgeInsets.only(left: 15,right: 15),
                       child: Row(
                         children: [
                           CircleAvatar(
                             backgroundColor: Colors.orange.withOpacity(0.6),
                             radius: 27,
                             child: Icon(Icons.smart_toy_outlined),
                           ),
                           SizedBox(width: 10,),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Buy Robot",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "Poppins"),),
                               Text("Earn Upto ₹1000",style: TextStyle(fontSize:11,fontFamily: "Poppins",fontWeight: FontWeight.w500),)
                             ],)
                         ],
                       ),
                     ),
                   ),
                 );
             }),
           ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8),
        child: Column(
        children: [
          Expanded(
            child: ListView.builder(

              shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context,index){
              return Stack(
                  children: [Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10,right: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xFFCBEEBA),
                                            Color(0xFFFFB6B6),
                                          ])
                                  ),
                                  child: Icon(Icons.wallet_giftcard,color: Colors.orange,size: 30,),
                                ),
                                SizedBox(width: _size.width*0.03,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: _size.width*0.47,
                                        child: Text("Now Buy Gold Coins",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "Poppins",fontSize: 13),)),
                                    Container(
                                        width: _size.width*0.67,

                                        child: Text("Buy Gold coins on special discount, limited time offer",style: TextStyle(fontSize: 11,fontFamily: "Poppins",color:Theme.of(context).primaryColor)),)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: ElevatedButton(
                                      onPressed: (){}, child: Text("Buy Now",style: TextStyle(fontSize: 16),)),
                                ),
                                Row(
                                  children: [

                                    SizedBox(width: 8,),
                                    CircleAvatar(
                                      backgroundColor: Color(0xFFCE8415),
                                      child: Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                                      radius: 18,
                                    ),
                                    SizedBox(width: 8,),
                                    CircleAvatar(
                                      backgroundColor: Color(0xFFCE8415),
                                      radius: 18,
                                      child: Icon(Icons.share,color: Colors.white,size: 20,),
                                    ),

                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    ),
                  ),
                    Positioned(
                      top: 0,
                      right:0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF6ECC4E),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomLeft: Radius.circular(15)),
                  gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                  Color(0xFFCBEEBA),
                  Color(0xFFFFB6B6),
                  ])
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(left: 35,right: 35,top: 5,bottom: 5),
                          child: Text("Up to 25%",style: TextStyle(color: Colors.black),),
                        ),
                      ),
                    ),

                  ]
              );
            }),
          ),
          SizedBox(height: _size.height*0.04,)

        ],
          ),
      ),
    );
  }
}
