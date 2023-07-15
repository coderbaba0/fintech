import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Education_Details extends StatefulWidget {
  const Education_Details({Key? key}) : super(key: key);

  @override
  State<Education_Details> createState() => _Education_DetailsState();
}

class _Education_DetailsState extends State<Education_Details> {

  String dropdownvalue = 'Please Select';

  var items = [
    'Please Select',
    'Secondary',
    'Higher Secondary',
    'Graduate',
    'Post Graduate',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    final _size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset("images/arrow.png",height: 50,width: 30,color: Theme.of(context).primaryColor,)),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Education Details",style: TextStyle(fontSize: 18),),
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select Qualification :",style: TextStyle(fontFamily: "Poppins",color: Color(0xFFD27EEE)),),
            SizedBox(height: 10,),
            Container(
              width: _size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
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
            SizedBox(height: 30,),
            Text("Education Proof : ",style: TextStyle(fontFamily: "Poppins",fontSize: 15),),
             SizedBox(height: _size.height*0.03,),

             DottedBorder(
               color: Colors.blue,
               borderType: BorderType.RRect,
               radius: Radius.circular(20),
               dashPattern: [5,6],
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
                                       Icon(Icons.image,size: 40,color: Colors.black54,),
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
                                       Icon(Icons.camera_alt,size: 40,color: Colors.black54,),
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
                   child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2)
                    ),
                     width: _size.width,
                     height: _size.height*0.15,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.cloud_upload_outlined,size: 60,color: Color(
                             0xB40CF5CF),),
                         Text("Upload",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,fontFamily: "Poppins",color: Colors.black.withOpacity(0.8)),),



                       ],

                     ),
                   ),
                 ),
             ),
            Spacer(),
            Container(
                height: _size.height*0.07,
                width: _size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF024133)),
                    onPressed: (){}, child: Text("Update Now",style: TextStyle(fontSize: 18,color: Colors.white.withOpacity(0.8)),)))


          ],
        ),
      ),
    );
  }
}
