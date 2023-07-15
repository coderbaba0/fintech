import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class My_Team_Widget extends StatefulWidget {
  const My_Team_Widget({Key? key}) : super(key: key);

  @override
  State<My_Team_Widget> createState() => _My_Team_WidgetState();
}

class _My_Team_WidgetState extends State<My_Team_Widget> {
  TextEditingController _textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 270,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Team Dashboard",style: TextStyle(fontFamily: "Poppins",fontSize: 16,fontWeight: FontWeight.w600),),
                Icon(Icons.info_outline)
              ],
            ),
            SizedBox(height: _size.height*0.018,),
            Card(
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
                                      color: Colors.white,fontSize: 15),
                                ),
                                Text(
                                  "See all leads here",
                                  style: TextStyle(
                                      fontSize: 12,
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
                      SizedBox(height: _size.height*0.01,),
                      Divider(
                        thickness: 1.5,
                        color: Colors.white,
                      ),
                      SizedBox(height: _size.height*0.007,),

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
                                      fontWeight: FontWeight.w600,

                                      color: Colors.white),textAlign: TextAlign.center,
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
                                      fontWeight: FontWeight.w600,
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
                                      fontWeight: FontWeight.w600,
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
                                      fontWeight: FontWeight.w600,
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
            ),
          ],
        ),


      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: _size.width*1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("ADD TEAM MEMBERS",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,),),
                        SizedBox(height: 8,),
                        Container(
                          width: _size.width*0.7,
                            child: Text("Expend your team by sharing the link below among your peers",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w600,fontSize: 12),)),
                        SizedBox(height: 25,),
                        Container(

                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 10,top: 5),
                            child: TextFormField(
                              controller: _textEditingController,
                              enabled: false,
                              decoration: InputDecoration(

                                hintStyle: TextStyle(fontFamily: "Poppins",fontSize: 13,fontWeight: FontWeight.w400,color: Theme.of(context).primaryColor,),
                                hintText: "http://www.goldenteam.in/?abh 288273,3nj372b2",
                                suffixIcon: GestureDetector(
                                  onTap: () async{
                                    await Clipboard.setData(ClipboardData(text: _textEditingController.text)).then((value) => Fluttertoast.showToast(msg: "Copied Successfully",backgroundColor: Colors.black54,toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.CENTER));
                                  },
                                    child: Icon(Icons.copy,size: 25,color:Theme.of(context).primaryColor,)),
                                isDense: true,
                                border: UnderlineInputBorder(borderSide: BorderSide.none)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Color(
                              0xFFB26BAF)),
                            onPressed: (){}, child: Text("ADD NOW",style: TextStyle(fontSize: 16,color: Colors.white),))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text("WATCH THE VIDEO",style: TextStyle(fontSize: 16,fontFamily: "Poppins",fontWeight: FontWeight.w600),),
              ),
              Container(
                width: _size.width,

                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Container(
                           width: _size.width,
                           height: _size.height*0.25,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Colors.black),
                           ),
                         ),
                          SizedBox(height: 15,),
                          Text("How to earn by making team?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 10,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent.withOpacity(0.4)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.delete_outline,color: Colors.red,size: 30,),
                        ),
                      ),
                      SizedBox(width: _size.width*0.04,),
                      Text("See Deleted Members")
                    ],
                  ),
                ),
              ),
              SizedBox(height: _size.height*0.12,)

            ],
          ),
        ),
      ),
    );
  }
}
