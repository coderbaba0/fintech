import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.green,statusBarIconBrightness: Brightness.light),

          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.close)),
          title: Text( "Notifications",style:TextStyle(fontSize: 18,))
        // Text("Notifications",style: TextStyle(fontSize: 20),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text( "No Notification",style:TextStyle(fontSize: 16,)),
            Text( "Check after Some time",style:TextStyle(fontSize: 14,)),

            SizedBox(height: 50,),
            Image.asset("asset/images/notification.png",height:150,)
          ],
        ),
      ),
    );
  }
}