import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Personal_Details extends StatefulWidget {
  const Personal_Details({Key? key}) : super(key: key);
  @override
  State<Personal_Details> createState() => _Personal_DetailsState();
}
class _Personal_DetailsState extends State<Personal_Details> {
  List _list=["Male","Female","Other"];
  int Value=1;
  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        title: Row(
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset("images/arrow.png",height: 50,width: 30,color: Theme.of(context).primaryColor,)),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Personal Details",style: TextStyle(fontSize: 18),),
            ),
            Spacer(),
            GestureDetector(
                onTap: (){
                },
                child: Image.asset("images/bell.png",height: 30,color: Theme.of(context).primaryColor,))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Add Nominee",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white.withOpacity(1)),),
                             Text("who become your nominee",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(1)),)
                          ],
                        ),
                        Container(

                            child: ElevatedButton(onPressed: (){}, child: Text("ADD NOW",style: TextStyle(color: Colors.white,fontSize: 14),)))
                      ],
                    )
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: _size.height*0.06,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: Text("Full Name"),
                    contentPadding: EdgeInsets.only(left: 30),
                    isDense: true,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: _size.height*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: Text("Mobile No."),
                      contentPadding: EdgeInsets.only(left: 30),
                      isDense: true,

                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){}, child: Text("Change Mobile Number"))
                ],
              ),
              SizedBox(height: 0,),
              Container(
                height: _size.height*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      contentPadding: EdgeInsets.only(left: 30),
                      isDense: true,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: _size.height*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: Text("PinCode"),
                      isDense: true,
                      contentPadding: EdgeInsets.only(left: 30),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: _size.height*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                 onTap: (){
                   SizedBox(
                     height: 200,
                     child: CupertinoDatePicker(
                       mode: CupertinoDatePickerMode.date,
                       initialDateTime: DateTime(1969, 1, 1),
                       onDateTimeChanged: (DateTime newDateTime) {
                         // Do something
                       },
                     ),
                   );
                 },
                  decoration: InputDecoration(
                      label: Text("Date of Birth"),
                      isDense: true,
                      contentPadding: EdgeInsets.only(left: 30),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Gender",style: TextStyle(fontSize: 18),),
              SizedBox(height: 15,),
              SizedBox(
                height: _size.height*0.05,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _list.length,
                  shrinkWrap: true,
                    itemBuilder: (context,index){
                  return  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Value=index!;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: index==Value?Colors.transparent:Colors.grey),
                            color: index==Value?Color(0xFFD27EEE):Colors.transparent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Radio(value: index, groupValue: Value, onChanged: (value){
                              setState(() {
                                Value=value!;
                              });
                            }),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Text(_list[index],style: TextStyle(fontSize: 15,color: index==Value?Colors.white:Colors.black,fontFamily: "Poppins"),),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: _size.height*0.05,),
              Container(
                height: _size.height*0.07,
                  width: _size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF024133)),
                      onPressed: (){}, child: Text("SUBMIT",style: TextStyle(fontSize: 18,color: Colors.white.withOpacity(0.8)),)))

            ],
          ),
        ),
      ),
    );
  }
}
