import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:q_chat_flutter/appColors.dart';


class ChatDetailScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
        return _ChatScreenStatePage();
  }
}


class _ChatScreenStatePage extends State<ChatDetailScreen>{
  @override
  Widget build(BuildContext context) {
     double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;
    BubbleStyle styleSomebody = BubbleStyle(
      radius: Radius.circular(20),
      nip: BubbleNip.leftTop,
      color: Colors.white,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, right: 50.0),
      alignment: Alignment.topLeft,
    );
    BubbleStyle styleMe = BubbleStyle(
      radius: Radius.circular(30),
      nip: BubbleNip.rightTop,
      color: Color.fromARGB(255, 225, 255, 199),
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, left: 50.0),
      alignment: Alignment.topRight,
    );

    // TODO: implement build

    return Scaffold(
      body: SafeArea(
      top: true,
      right: false,
      left: false,
      bottom: false,
      child: Column(
        children: <Widget>[

          ListTile(
            leading: CircleAvatar( 
                  child:  ClipOval(
                   child: SizedBox(
                     width: 180.0,
                     height: 180.0,
                     child: Image.asset('Asset/images1.jpg'),
                   ),
                       ),
                  radius: 28,
                  backgroundColor: Colors.grey,
                ),
                title: Container(
                  width: MediaQuery.of(context).size.width,
                   padding:EdgeInsets.fromLTRB(0, 0, 0, 4),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                 Expanded(         
                   child:  Text('Adam holand',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'popBlackMedium'
                    ),
                    ),
                 ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.30,
                    ),
                  IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.group_add,size: 35,),
                   color: Colors.greenAccent),
                  ],
                  ),
                ),
                  subtitle: Container(
                    padding:EdgeInsets.fromLTRB(5, 0, 0, 4),
                    child: Text('Online',
                    style: TextStyle(
                      fontWeight: FontWeight.w300),
                      ),
                  ), 
          ),
            Divider(
            height: 10,
          ),
        //chatScreen 
    Expanded(
        child: Container(
        color: Colors.greenAccent,
        //yellow.withAlpha(64),
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            //SizedBox(height: 50,),
            Bubble(
              alignment: Alignment.center,
              color: Color.fromARGB(255, 212, 234, 244),
              elevation: 4 * px,
              margin: BubbleEdges.only(top: 8.0),
              child: Text('TODAY', style: TextStyle(fontSize: 10)),
            ),
           
            Bubble(
             nip: BubbleNip.no,
              style: styleSomebody,
              child: Text('Hi Ashwani. Sorry to bother you. I have a queston for you.',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium')),
            ),
             Padding(
               padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
               child: Text(
              '4.35 pm'
            ),
             ),
            Bubble(
              color: Colors.greenAccent,
              style: styleMe,
              nip: BubbleNip.no,
              child: Text('Whats\'up?',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium',color: AppColors.colorPrimary)),
            ),
            Padding(
               padding: EdgeInsets.fromLTRB(0, 7, 10, 0),
               child: Align(
                 alignment: Alignment.topRight,
            child: Text(
              '4.35 pm'
               ),
               ),
             ),
            
            Bubble(
              nip: BubbleNip.no,
              style: styleSomebody,
              child: Text('I\'ve been having a problem with my computer.',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium'),),
            ),
            Padding(
               padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
               child: Text(
              '4.36 pm'
            ),
             ),
            
               Bubble(
              style: styleSomebody,
              margin: BubbleEdges.only(top: 10.0),
              nip: BubbleNip.no,
              child: Text('Can you help me?',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium')),
            ),
           
            Padding(
               padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
               child: Text(
              '4.37 pm'
            ),
             ),
            Bubble(
              color: Colors.greenAccent,
              style: styleMe,
              nip: BubbleNip.no,
              child: Text('Ok',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium',color:Colors.greenAccent)),
            ),
             Padding(
               padding: EdgeInsets.fromLTRB(0, 7, 10, 0),
               child: Align(
                 alignment: Alignment.topRight,
            child: Text(
              '4.35 pm'
               ),
               ),
             ),
            Bubble(
              color: Colors.greenAccent,
              style: styleMe,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 10.0),
              child: Text('What\'s the problem?',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium',color: Colors.greenAccent)),
            ),
           Padding(
               padding: EdgeInsets.fromLTRB(0, 7, 10, 0),
               child: Align(
                 alignment: Alignment.topRight,
            child: Text(
              '4.38 pm'
               ),
               ),
             ),
             Bubble(
              style: styleSomebody,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 10.0),
              child: Text('Window is not working',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium')),
            ),
            Padding(
               padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
               child: Text(
              '4.40 pm'
            ),
             ),
             Bubble(
              style: styleSomebody,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 10.0),
              child: Text('It shows an error message ',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium')),
            ),
            Padding(
               padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
               child: Text(
              '4.41 pm'
            ),
             ),
            Bubble(
              color: Colors.greenAccent,
              style: styleMe,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 10.0),
              child: Text('Send me the screenshot',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium',color: Colors.greenAccent)),
            ),
            Padding(
               padding: EdgeInsets.fromLTRB(0, 7, 10, 0),
               child: Align(
                 alignment: Alignment.topRight,
            child: Text(
              '4.43 pm'
               ),
               ),
             ),
            Bubble(
              color: Colors.greenAccent,
              style: styleMe,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 10.0),
              child: Text('of the error message',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium',color: AppColors.colorPrimary)),
            ),
             Padding(
               padding: EdgeInsets.fromLTRB(0, 7, 10, 0),
               child: Align(
                 alignment: Alignment.topRight,
            child: Text(
              '4.44 pm'
               ),
               ),
             ),
            Bubble(
              style: styleSomebody,
              nip: BubbleNip.no,
              margin: BubbleEdges.only(top: 10.0),
              child: Text('ok',style: TextStyle(fontSize: 17,fontFamily: 'popBlackMedium')),
            ),
            Padding(
               padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
               child: Text(
              '4.45 pm'
            ),
             ),
             ],
        ),
      ),
 ),
Stack(
  alignment: Alignment.centerRight,
  children: <Widget>[ 
       Container(
     margin: EdgeInsets.only(bottom: 2),
     child: Padding(
       padding: EdgeInsets.fromLTRB(30, 0,60, 0),
       child: TextField(
  decoration:  InputDecoration(
      border:  OutlineInputBorder(
        borderRadius:  BorderRadius.all(
           Radius.circular(30.0),
        ),borderSide: BorderSide(width: 20,color: Colors.greenAccent),
      ),
      focusedBorder: OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(30)),
     borderSide: BorderSide(width: 1,color: Colors.greenAccent),
   ),
      filled: true,
      hintStyle:  TextStyle(color: Colors.greenAccent),
      hintText: "Type a message",
      fillColor: Colors.white70),
    ),
     ),
   ), 
   Container(
     margin: EdgeInsets.fromLTRB(0, 0, 10, 17),
       height:30,
      // width: 50,
     child:  IconButton(
       tooltip: 'Send',
       onPressed: (){
        print('clicked------------->>>>>>>>>>>');
       },
       icon: Icon(Icons.send,size: 30,color: Colors.greenAccent),
     ),
   ),
     ],
      ),
       ],
      ),
     ),
    );
   }
  }