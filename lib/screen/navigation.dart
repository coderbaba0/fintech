import 'package:banking/screen/Credit%20Cards.dart';
import 'package:banking/screen/my_team.dart';
import 'package:banking/screen/referral.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'leads.dart';
class Navigation_Widget extends StatefulWidget {
  const Navigation_Widget({Key? key}) : super(key: key);
  @override
  State<Navigation_Widget> createState() => _Navigation_WidgetState();
}

class _Navigation_WidgetState extends State<Navigation_Widget> {
  final _pageController = PageController(initialPage: 0);


  int maxCount = 5;
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
   List<Widget> bottomBarPages = [
     Home_Widget(),
     Leads_Widget(),
     CreaditCard_Widget(),
     Referral_Widget(),
     My_Team_Widget()
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
              bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
          items: [BottomNavigationBarItem(icon:Icon(Icons.home_filled,color: Theme.of(context).primaryColor),label:  "Home", ),
        BottomNavigationBarItem(icon:Icon(Icons.note_rounded,color: Theme.of(context).primaryColor),label:  "Leads" ),
        BottomNavigationBarItem(icon:Icon(Icons.add,size: 30,color: Theme.of(context).primaryColor,),label:  "" ),
        BottomNavigationBarItem(icon:Icon(Icons.group_add,color: Theme.of(context).primaryColor),label:  "Refferral" ),
        BottomNavigationBarItem(icon:Icon(Icons.group,color: Theme.of(context).primaryColor),label:  "Leads" ),

      ])
      // AnimatedNotchBottomBar(
      //   notchBottomBarController: _controller,
      //   color:  Colors.black,
      //   showLabel: false,
      //   notchColor: Colors.white,
      //   removeMargins: false,
      //   bottomBarWidth: 500,
      //   durationInMilliSeconds: 300,
      //   bottomBarItems: [
      //     BottomBarItem(inActiveItem: Icon(Icons.home_filled,color: Colors.grey,),itemLabel: "Home", activeItem: Icon(Icons.home_filled),),
      //     BottomBarItem(inActiveItem: Icon(Icons.note_rounded,color: Colors.grey,),itemLabel: "Leads", activeItem: Icon(Icons.note_rounded),),
      //     BottomBarItem(inActiveItem: GestureDetector(
      //       onTap: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context)=>CreaditCard_Widget()));
      //       },
      //         child: Icon(Icons.add,size: 30,)),itemLabel: "", activeItem: GestureDetector(
      //       onTap: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context)=>CreaditCard_Widget()));
      //
      //       },
      //         child: Icon(Icons.add,size: 30,color: Colors.red,)),),
      //     BottomBarItem(inActiveItem: Icon(Icons.group_add,color: Colors.grey,),itemLabel: "Refferral", activeItem: Icon(Icons.group_add),),
      //     BottomBarItem(inActiveItem: Icon(Icons.group,color: Colors.grey,),itemLabel: "My Team", activeItem: Icon(Icons.group,),),
      //   ], onTap: (index) {
      //   _pageController.jumpToPage(index);
      //
         :null,
    );
  }
}
