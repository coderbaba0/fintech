import 'package:flutter/material.dart';

class Language_Widget extends StatefulWidget {
  const Language_Widget({Key? key}) : super(key: key);

  @override
  State<Language_Widget> createState() => _Language_WidgetState();
}

class _Language_WidgetState extends State<Language_Widget> {
  final List<String> _list=["Enlish","Hindi","Telugu","Marathi","Bangla"];
  final List<String> _list1=["Enlish","हिंदी","తెలుగు","मराठी","বাংলা"];
  int Value=0;
  final Color _color=Colors.grey.withOpacity(0.4);
  final Color _borderColor=Colors.black54;
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
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("Language",style: TextStyle(fontSize: 18),),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose Language",style: TextStyle(fontSize: 18),),
            SizedBox(height: 15,),
           GridView.builder(
             itemCount: 5,
               shrinkWrap: true,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 100,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,index){
               return  GestureDetector(
                 onTap: (){
                   setState(() {
                     Value=index!;
                   });
                 },
                 child: Container(

                   decoration: BoxDecoration(
                     color: index==Value?_color:Colors.transparent,
                     borderRadius: BorderRadius.circular(15),
                     border:  Border.all(color: index==Value?Colors.black54:Colors.grey.withOpacity(0.3))
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 12,right: 8,top: 8),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(_list1[index].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                             Radio(
                               activeColor: Color(0xFF086C57),
                                 value: index, groupValue: Value, onChanged: (value){
                               setState(() {
                                 Value=value!;
                               });
                             })
                           ],
                         ),
                         Text(_list[index].toString())
                       ],
                     ),
                   ),
                 ),
               );
           }),
            Spacer(),
            Divider(),
            Container(
              width: _size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary:  Colors.deepPurple),
                    onPressed: (){}, child: Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8),
                  child: Text("Continue",style: TextStyle(fontSize: 18,color: Colors.white),),
                ))),
          ],
        ),
      ),
    );
  }
}
