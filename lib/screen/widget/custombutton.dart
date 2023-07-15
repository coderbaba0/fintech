import 'package:flutter/material.dart';

class Gradientbutton extends StatelessWidget {
  const Gradientbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        child: Column(
            children: [
              DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFFB86BF3),
                            Color(0xFFBDF9AE),
                            Color(0xFFEBFDFF),
                            //add more colors
                          ]
                      ),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                            blurRadius: 5) //blur radius of shadow
                      ]
                  ),
                  child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onSurface: Colors.transparent,
                        shadowColor: Colors.transparent,
                        //make color or elevated button transparent
                      ),
                      onPressed: (){
                        print("You pressed Elevated Button");
                      },
                      child: Padding(
                        padding:EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child:Text("Generate OTP"),
                      )
                  )
              )
            ]
        )
    );
  }
}
