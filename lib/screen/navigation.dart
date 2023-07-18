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
    History(),
    CreaditCard_Widget(),
    Profile(),
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
      // bottomNavigationBar: (bottomBarPages.length <= maxCount)
      //   ?
      //   BottomNavigationBar(
      //   selectedItemColor: Colors.green,
      //   backgroundColor: Theme.of(context).primaryColor,
      //     onTap: (index) {
      //       _pageController.jumpToPage(index);
      //     },
      //     items: [BottomNavigationBarItem(icon:Icon(Icons.home_filled,color: Theme.of(context).primaryColor),label:  "Home", ),
      //   BottomNavigationBarItem(icon:Icon(Icons.timer,color: Theme.of(context).primaryColor),label:  "History" ),
      //   BottomNavigationBarItem(icon:Icon(Icons.add,size: 30,color: Theme.of(context).primaryColor,),label:  "" ),
      //   BottomNavigationBarItem(icon:Icon(Icons.group_add,color: Theme.of(context).primaryColor),label:  "Refferral" ),
      //   BottomNavigationBarItem(icon:Icon(Icons.group,color: Theme.of(context).primaryColor),label:  "Leads" ),
      //
      // ])
      //       :null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {},
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.qr_code_2,
                  size: 40,
                  color: Theme.of(context).primaryColorLight,
                ),
              )),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.only(top: 25.0),
        elevation: 0,
        color:Colors.transparent,
        clipBehavior: Clip.antiAlias,
        notchMargin: 15,
        shape: CircularNotchedRectangle(),
        child: Wrap(
          runAlignment: WrapAlignment.spaceBetween,
          alignment: WrapAlignment.spaceBetween,
          children: [
            (bottomBarPages.length <= maxCount)
                ? BottomNavigationBar(
               backgroundColor: Theme.of(context).primaryColorLight.withOpacity(0.9),
                    elevation: 1,
                    useLegacyColorScheme: true,
                    type: BottomNavigationBarType.fixed,
                    onTap: (index) {
                      _pageController.jumpToPage(index);
                    },
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home,
                            color: Theme.of(context).primaryColor),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.timer,
                              color: Theme.of(context).primaryColor),
                          label: "History"),

                      BottomNavigationBarItem(
                          icon: Icon(Icons.percent,
                              color: Theme.of(context).primaryColor),
                          label: "Offers"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person,
                              color: Theme.of(context).primaryColor),
                          label: "Profile"),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
