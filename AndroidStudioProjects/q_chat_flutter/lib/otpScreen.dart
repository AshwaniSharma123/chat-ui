import 'dart:async';

import 'package:flutter/material.dart';
import 'package:q_chat_flutter/chatUiMessage.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
   final focus = FocusNode();   //for focus on next text field
   final focus1 = FocusNode();
   final focus2 = FocusNode();
   final TextEditingController  textEditingController= TextEditingController();
  


  Timer _timer;
  int _start = 30;

void startTimer() async {
  const oneSec = const Duration(seconds: 1);
  _timer =  Timer.periodic(
    oneSec,
    (Timer timer) => setState(() {
        if (_start < 1) {
          timer.cancel();
        } 
        else  {
          _start = _start - 1;
        }
      },
    ),
  );
}

@override
  void initState() {    
    startTimer();    
    super.initState();
  }

@override
void dispose() {
  _timer.cancel();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
       
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

         Padding(
           padding: EdgeInsets.fromLTRB(5, 0, 0, 0) ,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                Container(
            width: MediaQuery.of(context).size.width*0.11,
             child: TextFormField(
                autofocus: true,
                maxLength: 1,
                textAlign: TextAlign.center,
            keyboardAppearance: Brightness.light,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next, 
            cursorColor: Colors.black12,
            cursorWidth: 2,
            decoration: InputDecoration(
               counter: Offstage(),
            focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
             ),
              ),
                style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
               ),

              controller: textEditingController,
               onChanged: (v){
                 if(textEditingController.value.text.length>0){
                  FocusScope.of(context).requestFocus(focus);
                  print('------->>>>>>>>>>>>> ${textEditingController.value.text.length}');
                 } 
              },
              ),
           ),
           Container(
           width: MediaQuery.of(context).size.width*0.11,
               child: TextFormField(
                 textAlign: TextAlign.center,
                focusNode: focus,
               autofocus: true,
               maxLength: 1,
               keyboardAppearance: Brightness.light,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
             
            cursorColor: Colors.black12,
            cursorWidth: 2,
            decoration: InputDecoration(
               counter: Offstage(),
            focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
             ),
              ),
                style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
               ),
               onChanged: (v){
                 if(textEditingController.value.text.length>0){
                  FocusScope.of(context).requestFocus(focus1);
                  //print('------->>>>>>>>>>>>> ${textEditingController.value.text.length}');
                 } 
              },
              ),
               ),

           Container(
            width: MediaQuery.of(context).size.width*0.11,
             child: TextFormField(
               textAlign: TextAlign.center,
               focusNode: focus1,
               autofocus: true,
               maxLength: 1,
               keyboardAppearance: Brightness.light,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next, 
            cursorColor: Colors.black12,
            cursorWidth: 2,
            decoration: InputDecoration(
               counter: Offstage(),
            focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
             ),
              ),
                style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
               ),
                 onChanged: (v){
                 if(textEditingController.value.text.length>0){
                  FocusScope.of(context).requestFocus(focus2);
                  //print('------->>>>>>>>>>>>> ${textEditingController.value.text.length}');
                 } 
              },
              ),
           ),
           Container(
            width: MediaQuery.of(context).size.width*0.11,
             child: TextFormField(
               textAlign: TextAlign.center,
           focusNode: focus2,
            maxLength: 1,
            
            keyboardAppearance: Brightness.light,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done, 
            cursorColor: Colors.black12,
            cursorWidth: 2,
            decoration: InputDecoration(
               counter: Offstage(),
            focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
             ),
              ),
                style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
               ),
              ),
           ),
             ],
           ),
         ),
       SizedBox(
             height: MediaQuery.of(context).size.height*0.05,
               ),
      Container(
        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
        child: _start < 10 ?  Text("Resend Code in 0.0$_start",
           style: TextStyle(
          fontSize: 16,
           color: Colors.grey,
           fontWeight: FontWeight.w600,
            ),
           ) : Text("Resend Code in 0.$_start",
            style: TextStyle(
          fontSize: 16,
           color: Colors.grey,
           fontWeight: FontWeight.w600,
            ),
           ) ,
      ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
                   ),
             InkWell(
                onTap: ()
                {
                     Navigator.push(
                       context,
                     MaterialPageRoute(builder: (context) => ChatDetailScreen   ()),
                                   );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                  height: MediaQuery.of(context).size.width*0.12,
                  width: MediaQuery.of(context).size.width*0.75,
                  decoration:  BoxDecoration(color: Colors.greenAccent,
                      borderRadius:  BorderRadius.circular(30.0),
                      border:  Border.all(color: Colors.green)
                  ),
                     child: Center(
                     child:Text(
                            'VERIFY',
                          style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ],
           ),
          )      
    );
  }
}