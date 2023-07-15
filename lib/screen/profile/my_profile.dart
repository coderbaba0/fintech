import 'package:banking/screen/home.dart';
import 'package:banking/screen/lang.dart';
import 'package:banking/screen/navigation.dart';
import 'package:banking/screen/profile/education.dart';
import 'package:banking/screen/profile/payment_setting.dart';
import 'package:banking/screen/profile/personal_details.dart';
import 'package:banking/screen/profile/professional_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/theme_managers.dart';

class MyProfile_Widget extends StatefulWidget {
  const MyProfile_Widget({Key? key}) : super(key: key);

  @override
  State<MyProfile_Widget> createState() => _MyProfile_WidgetState();
}

class _MyProfile_WidgetState extends State<MyProfile_Widget> {
  bool Value=true;
  int Size=25;
  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Scaffold(
      appBar:
      AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,

        title: Row(
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Navigation_Widget()));
                },
                child: Image.asset("images/arrow.png",height: 50,width: 30,color: Theme.of(context).primaryColor,)),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("My Profile",style: TextStyle(fontSize: 18),),
            ),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Language_Widget()));
            },
              child: Image.asset("images/translate.png",height: 40,width: 30,color: Color(
                  0xFFFFFFFF),))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF086C57),
                          Color(0xFF199F85)
                        ])),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Stack(
                        children: [CircleAvatar(radius: 50,
                          backgroundColor: Colors.yellow.withOpacity(0.8),
                          child: Image.asset("images/use.png",height: 40,),
                        ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: (){
                                showModalBottomSheet(context: context, builder: (context)=> Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Pick Image With",style: TextStyle(fontSize: 18,fontFamily: "Poppins"),),
                                      SizedBox(height: 8,),
                                      Divider(),
                                      Row(
                                        children: [

                                          Expanded(
                                            child: Container(

                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.image,size: 40,color: Theme.of(context).primaryColor),
                                                  Text("Photo Gallery",style: TextStyle(fontSize: 15,fontFamily: "Poppins"),)
                                                ],
                                              ),
                                              height: _size.height*0.1,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.grey)
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Container(

                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.camera_alt,size: 40,color: Theme.of(context).primaryColor,),
                                                  Text("Camera",style: TextStyle(fontSize: 15,fontFamily: "Poppins"),)
                                                ],
                                              ),
                                              height: _size.height*0.1,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: Colors.grey)
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ));
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: Icon(Icons.camera_alt_outlined,size: 20),
                              ),
                            ),
                          )
                        ]
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Abhay Prasad",style: TextStyle(fontSize: 18,color: Colors.white.withOpacity(0.9)),),
                            Text("ADVISOR CODE : 201828398",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.9)),),
                            SizedBox(height: 8,),
                            Container(

                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Color(
                                      0xFFC58FEE)),
                                    onPressed: (){}, child: Text("Share Profile",style: TextStyle(color: Colors.white.withOpacity(0.9)),)))
                          ],
                        ),
                      )

                    ],
                  )
                ),
              ),
              SizedBox(height: 10,),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal_Details()));
                },
                leading: Image.asset("images/use.png",height: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("Personal Details",style: TextStyle(fontFamily: "Poppins"),),
                trailing: CircleAvatar(
                  radius: 15,
                  child: Text("0"),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment_Bank()));

                },
                leading: Image.asset("images/wallet.png",height: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("Payment Settings",style: TextStyle(fontFamily: "Poppins"),),
                trailing: CircleAvatar(
                  radius: 15,
                  child: Text("0"),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Professional_Details()));

                },
                leading: Image.asset("images/waiter.png",height: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("Professional Details",style: TextStyle(fontFamily: "Poppins"),),
                trailing: CircleAvatar(
                  radius: 15,
                  child: Text("0"),
                ),
              ),
              ListTile(
                leading: Image.asset("images/pro.png",height: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("KYC Details",style: TextStyle(fontFamily: "Poppins"),),
                trailing: CircleAvatar(
                  radius: 15,
                  child: Text("0"),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Education_Details()));

                },
                leading: Image.asset("images/mortarboard.png",height: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("Education Details",style: TextStyle(fontFamily: "Poppins"),),
                trailing: CircleAvatar(
                  radius: 15,
                  child: Text("0"),
                ),
              ),
              ListTile(
                leading: Image.asset("images/trophy.png",height: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("Contest History",style: TextStyle(fontFamily: "Poppins"),),
                trailing: CircleAvatar(
                  backgroundColor: Color(0xFF086C57),
                  radius: 15,
                  child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 18,)
                ),
              ),
              ListTile(
                leading: Image.asset("images/padlock.png",height: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("M-PIN",style: TextStyle(fontFamily: "Poppins"),),
                subtitle: Text("Your key to Security"),
                trailing: Container(

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFC58FEE)),
                    onPressed: (){},child: Text("SETUP",style: TextStyle(color: Colors.white,fontSize: 15),),),
                ),
              ),
              Consumer(
                builder: (context, ThemeNotifier themeNotifier, child) =>
                    SwitchListTile(
                      title: Text("Dark Mode"),
                      onChanged: (val) {
                        themeNotifier.toggleTheme();
                      },
                      value: themeNotifier.darkThemes,
                    ),
              ),
              Text("OTHER LINKS",style: TextStyle(color: Color(0xFFAB72D9) ),),
              ListTile(
                leading: Icon(Icons.privacy_tip_outlined,size: Size.toDouble(),color:Theme.of(context).primaryColor),
                title: Text("Privacy Policy",style: TextStyle(fontFamily: "Poppins"),),
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip_outlined,size: 30,color: Theme.of(context).primaryColor),
                title: Text("Term & Condition",style: TextStyle(fontFamily: "Poppins"),),
              ),
              ListTile(
                leading:  Icon(Icons.rate_review,size: Size.toDouble(),color: Theme.of(context).primaryColor,),
                title: Text("Rate Us",style: TextStyle(fontFamily: "Poppins"),),
              ),
              ListTile(
                leading:  Icon(Icons.percent,size: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("About TDS Deductions",style: TextStyle(fontFamily: "Poppins"),),
              ),
              ListTile(
                leading: Image.asset("images/trash.png",height: Size.toDouble(),),
                title: Text("Delete Account",style: TextStyle(fontFamily: "Poppins",color: Colors.red),),
              ),
              ListTile(
                leading: Icon(Icons.logout,size: Size.toDouble(),color: Theme.of(context).primaryColor),
                title: Text("Logout",style: TextStyle(fontFamily: "Poppins"),),
              ),
            SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
