import 'package:flutter/material.dart';

class Professional_Details extends StatefulWidget {
  const Professional_Details({Key? key}) : super(key: key);

  @override
  State<Professional_Details> createState() => _Professional_DetailsState();
}

class _Professional_DetailsState extends State<Professional_Details> {

  String dropdownvalue = 'Job';

  var items = [
    'Job',
    'Business',
    'Unemployed',
  ];
  String dropdownvalue2 = '2023';

  var items2 = [
    '2023',
    '2022',
    '2021',

  ];

  String dropdownvaluemonth = 'JAN';
  var itemsmonth = [
  'JAN',
    'FEB',
    'MARCH',
    'APRIL',
    'MAY',
    'JUNE',
    'JULY',
    'AUGUST',
    'SEPT',
    'OCT',
    'NOV',
    'DEC',
  ];
  List _list=["Individual","Non-Individual",];
  int Value=0;
  List _list1=["I,Have","I,Don't",];
  int Value1=0;
  List _list2=["I,Have","I,Don't",];
  int Value2=0;
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
              child: Text("Professional Details",style: TextStyle(fontSize: 18),),
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
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("You're working as?",style: TextStyle(fontFamily: "Poppins",fontSize: 14),),
           SizedBox(height: 10,),
            SizedBox(
              height: 40,
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
                              border: Border.all(color: index==Value?Colors.transparent:Colors.grey.withOpacity(0.3)),
                              color: index==Value?Color(0xFFD27EEE):Colors.transparent,
                              borderRadius: BorderRadius.circular(15)
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
            SizedBox(height: 12,),
            Text("Select Primary Source of income"),
            SizedBox(height: 5,),
            Container(
              width: _size.width,
              height: _size.height*0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.withOpacity(0.3))
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(20)
                      .copyWith(topLeft: Radius.circular(20)),
                  // Initial Value
                  value: dropdownvalue,
                  // Down Arrow Icon
                  icon: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 15,
                    ),
                  ),
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(

                      value: items,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          items,
                          style: const TextStyle(fontSize: 15,fontFamily: "Poppins"),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 12,),
            Text("Total experience in any financial product"),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Years",style: TextStyle(color: Colors.grey),),
                SizedBox(width: _size.width*0.4,),
                Text("Months",style: TextStyle(color: Colors.grey),)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: _size.height*0.05,
                    width: _size.width*0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.withOpacity(0.3))
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(20)
                            .copyWith(topLeft: Radius.circular(20)),
                        // Initial Value
                        value: dropdownvalue2,
                        // Down Arrow Icon
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 15,
                        ),
                        // Array list of items
                        items: items2.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                items,
                                style: const TextStyle(fontSize: 15,fontFamily: "Poppins"),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownvalue2 = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: _size.height* 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(20)
                            .copyWith(topLeft: Radius.circular(20)),
                        // Initial Value
                        value: dropdownvaluemonth,
                        // Down Arrow Icon
                        icon: const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 15,
                          ),
                        ),
                        // Array list of items
                        items: itemsmonth.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                items,
                                style: const TextStyle(fontSize: 15,fontFamily: "Poppins"),
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownvaluemonth = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Text("Do you have office space to sell financial products?"),
            SizedBox(height: 10,),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _list1.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            Value1=index!;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: index==Value1?Colors.transparent:Colors.grey.withOpacity(0.3)),
                              color: index==Value1?Color(0xFFD27EEE):Colors.transparent,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Radio(value: index, groupValue: Value1, onChanged: (value){
                                setState(() {
                                  Value1=value!;
                                });
                              }),
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Text(_list1[index],style: TextStyle(fontSize: 15,color: index==Value1?Colors.white:Colors.black,fontFamily: "Poppins"),),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 17,),
            Text("Do you have agency or POS license?"),
            SizedBox(height: 10,),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _list2.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            Value2=index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: index==Value2?Colors.transparent:Colors.grey.withOpacity(0.3)),
                              color: index==Value2?Color(0xFFD27EEE):Colors.transparent,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            children: [
                              Radio(value: index, groupValue: Value2, onChanged: (value){
                                setState(() {
                                  Value2=value!;
                                });
                              }),
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Text(_list2[index],style: TextStyle(fontSize: 15,color: index==Value2?Colors.white:Colors.black,fontFamily: "Poppins"),),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Spacer(),
            Container(
                height: _size.height*0.07,
                width: _size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF024133)),
                    onPressed: (){}, child: Text("Good to Go?",style: TextStyle(fontSize: 18,color: Colors.white.withOpacity(0.8)),)))
          ],
        ),
      ),
    );
  }
}
