
import 'package:banking/screen/auth/verifypansucess.dart';
import 'package:banking/screen/widget/custombutton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class VerifyPan extends StatefulWidget {
  const VerifyPan({Key? key}) : super(key: key);
  @override
  State<VerifyPan> createState() => _VerifyPanState();
}
class _VerifyPanState extends State<VerifyPan> {
  String? pannumber;
  final _formKey = GlobalKey<FormState>();
  TextEditingController panctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Verify Pan!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Verify your pan card details.",style: TextStyle(fontSize: 15),),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,width: 300,
                child: Image.asset("images/verify.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Pan No : '),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextFormField(
                    onSaved: (newValue) => pannumber = newValue!,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please, enter Pan number!';
                      } else if (value.length > 10) {
                        return 'Pan  number must be equal to 10 digit.';
                      } else
                      {
                        return null;
                      }
                    },
                    style: TextStyle(color: Colors.black,),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white60),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      labelStyle:  TextStyle(color: Theme.of(context).primaryColor),
                      hintText: "Enter Your Pan number",
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Color(0xFFBDF9AE),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.document_scanner,
                        color: Colors.black,
                      ),
                    ),
                    controller: panctrl,
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFB86BF3),
                          Color(0xFFBDF9AE),
                          Color(0xFFEBFDFF),
                          //add more colors
                        ]
                    ),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: <BoxShadow>[BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                        blurRadius: 5) //blur radius of shadow
                    ]
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyPanSucess(),
                          ));
                      //write submit function code
                    }
                  },
                  child: Text(
                    "Verify",
                    style: TextStyle(fontSize: 20,color: Colors.black, ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
