import 'package:flutter/material.dart';

class Payment_Bank extends StatefulWidget {
  const Payment_Bank({Key? key}) : super(key: key);

  @override
  State<Payment_Bank> createState() => _Payment_BankState();
}

class _Payment_BankState extends State<Payment_Bank> with TickerProviderStateMixin{

   TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }
  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: _size.height*0.23,
        title: Column(
          children: [
            Row(

              children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: Image.asset("images/arrow.png",height: 50,width: 30,color: Theme.of(context).primaryColor,)),

        Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Payment Settings",style: TextStyle(fontSize: 18),),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context, builder: (context)=>Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 20,),
                        Text("BANK & PAYTM VERIFICATION",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(
                            0xFFBA75DE),fontFamily: "Poppins"),),
                         SizedBox(height: 10,),
                        ExpansionTile(



                          title: Text("Why these Banking and paytm details are mandatory?",style: TextStyle(fontSize: 15,fontFamily: "Poppins")),children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,right: 15),
                            child: Text("Advisor has to submit Bank and Paytm detail so he can withdraw his money anytime and receive in his account without any hurdle",style: TextStyle(
                              color: Colors.grey
                            ),),
                          ),
                        ],
                        ),

                        ExpansionTile(


                          title: Text("How to add Paytm?",style: TextStyle(fontSize: 15,fontFamily: "Poppins")),children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,right: 15),
                            child: Text("Go to profile and click on Banking and select Paytm Account. Now add mobile number",style: TextStyle(
                                color: Colors.grey
                            ),),
                          ),
                        ],
                        ),

                        ExpansionTile(


                          title: Text("How does Bank details will be verified?",style: TextStyle(fontSize: 15,fontFamily: "Poppins")),children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,right: 15),
                            child: Text("When the advisor will add Bank details Banksathi team will verify by adding penny in the given account number and it will be verified",style: TextStyle(
                                color: Colors.grey
                            ),),
                          ),
                        ],
                        ),
                      ],

                    ));
                  },
                    child: Image.asset("images/i.png",height: 30,color: Color(0xFF086C57),))
              ],
            ),

            Container(
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Image.asset("images/add.png",height: 50,),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Manage Bank",style: TextStyle(fontSize: 19,color: Colors.white),),
                        Container(
                          width: _size.width*0.54,
                            child: Text("Select primary account to receive money and you can change it at any time",style: TextStyle(fontSize: 13,fontFamily: "Poppins",color: Colors.white),maxLines: 3,))
                      ],
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      ),
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
                            child: Text("My Leads",style: TextStyle( fontFamily: "Poppins",fontSize: 17,color: Theme.of(context).primaryColor,),),
                          ),),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          child: Tab(child: Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10),
                            child: Text("Potential Leads",style: TextStyle( fontFamily: "Poppins",fontSize: 17,color:Theme.of(context).primaryColor,),),
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
                       Image.asset("images/lockerr.jpg",height: _size.height*0.35,width: _size.width*0.6,),

                        Text("No  Bank Found",style: TextStyle(fontSize: 20,fontFamily: "Poppins",fontWeight: FontWeight.bold),),

                        Container(
                          width: _size.width*0.8,
                            child: Text("Your have not added any bank account please add a bank account",style: TextStyle(fontFamily: "Poppins",fontSize: 15,color: Theme.of(context).primaryColor,),textAlign: TextAlign.center,)),
                     SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Color(0xFF086C57)),
                            onPressed: () {},
                            child: Text(
                              "Add Bank",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,fontSize: 17,color: Colors.white),
                            )),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Container(
                           width: _size.width,
                           height: _size.height*0.1,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.blue.withOpacity(0.2)
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(Icons.info_outline,color: Colors.blue,size: 25,),
                               SizedBox(width: 15,),
                               Container(
                                 width: _size.width*0.7,
                                   child: Text("PayTM wallet number will be default as your phone number",style: TextStyle(fontSize: 14,fontFamily: "Poppins",color: Colors.blue),))
                             ],
                           ),
                         ),
                          SizedBox(height: 15,),
                          Text("PayTM Phone Number",style: TextStyle(fontSize: 15,fontFamily: "Poppins"),),

                          SizedBox(height: 10,),

                          Container(
                            height: _size.height*0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Theme.of(context).primaryColor,width: 1.5)
                            ),
                            child: TextField(

                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.send_to_mobile,size: 30,color: Theme.of(context).primaryColor,),
                                isDense: true,
                                enabled: false,
                                contentPadding: EdgeInsets.all(11),
                                hintText: "7129389182",
                                hintStyle: TextStyle(fontSize: 16,color: Theme.of(context).primaryColor,),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none
                                )
                              ),
                            ),
                          )

                        ],
                      ),
                    )
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
