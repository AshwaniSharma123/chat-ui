
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:q_chat_flutter/chatScreen.dart';

class Setting extends StatefulWidget {
  bool isInstructionView = true;

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  


  bool isInstructionView ;
  File _image;
 

 void BottomSheet(context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            child:  Wrap(
            children: <Widget>[
           ListTile(
            leading:  Icon(Icons.music_note),
            title:  Text('Camera'),
            onTap: () {
              getImage();
            }          
          ),
           ListTile(
            leading:  Icon(Icons.videocam),
            title:  Text('Gallery'),
            onTap: ()  {
            getGallery();
            },          
          ),
           ],
          ),
          );
      }
    );
}

  Future getImage() async {

    
    var image = await ImagePicker.pickImage(
    
    source: ImageSource.camera,
    maxHeight: MediaQuery.of(context).size.height*.4,
    maxWidth: MediaQuery.of(context).size.width);
    setState( ()
    {
      _image = image;
    }
    );
  }
  Future getGallery() async {

    
    var image = await ImagePicker.pickImage(
    
    source: ImageSource.gallery,
    maxHeight: MediaQuery.of(context).size.height*.4,
    maxWidth: MediaQuery.of(context).size.width);
    setState( ()
    {
      _image = image;
    }
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        left: false,
  top: true,
  right: false,
  bottom: false,
        child: SingleChildScrollView(
        child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         
          children: <Widget>[
          
SizedBox(
  height: MediaQuery.of(context).size.width*0.2,
),

Container(
  margin: EdgeInsets.fromLTRB(30, 0, 0,20),
  child:  Stack(
    children: <Widget>[
      Container(
        child: CircleAvatar( 
                  child:  ClipOval(
                   child:      SizedBox(
                     width: 180.0,
                     height: 180.0,
                     child: (_image!=null)?Image.file(
                       _image,
                       fit: BoxFit.fill,
                     ):Image.asset('Asset/images1.jpg'),
                   ),
                       ),
                  radius: 50,
                  backgroundColor: Colors.grey,
                ),
      ),
      Container(
        
        margin: EdgeInsets.fromLTRB(25, 25, 0, 0),
        color: Colors.transparent,
        child: IconButton(
          onPressed: (){
            BottomSheet(context);
          },
          icon: Icon(
            Icons.camera_alt
            ),
        ),
      ),
       
    ],
  ),
),

      Divider(
        color: Colors.grey,
      ),

        Container(
        margin: EdgeInsets.fromLTRB(30, 20, 20, 0),
        child:
        TextFormField(
          cursorColor: Colors.black12,
          cursorWidth: 2,
            decoration: InputDecoration(
              labelText: 'Full name'.toUpperCase(),
            suffixIcon: Icon(
              Icons.edit,size: 25.0,
              color: Colors.greenAccent,
            
              ),
            
              border: InputBorder.none,
                // focusedBorder: UnderlineInputBorder(
                //    borderSide: BorderSide(color: Colors.white),
                // ),
                labelStyle: TextStyle(
                  color: Colors.greenAccent,
                 fontSize: 17.0),
                 ),
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0
            ),
        ),
      ),
        Divider(
        color: Colors.grey,
        ),
       Container(
        margin: EdgeInsets.fromLTRB(30, 20, 20, 0),
        child:
          TextFormField(
              cursorColor: Colors.black12,
            cursorWidth: 2,
              decoration: InputDecoration(
                labelText: 'PASSWORD'.toUpperCase(),
            suffixIcon:Icon(Icons.edit,size: 25.0,
                color: Colors.greenAccent,
                ),
                border: InputBorder.none,
                  // focusedBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.white),
                  // ),
                  labelStyle: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 17.0),
                  ),
              autovalidate: true,
              obscureText: true,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0
              ),
          ),
      ),
      Divider(
        color: Colors.grey,
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
          margin: EdgeInsets.fromLTRB(30, 20, 0, 20),
          child:   Align(
            alignment: Alignment.topLeft,
            child:   Text('Notification'.toUpperCase(),style: TextStyle(
              fontSize: 17,
               color: Colors.greenAccent,
              fontWeight: FontWeight.w600,
            ),),
          ),
        ),

        Container(
          child:Transform.scale(
           scale: 1.2,
            child: Switch(
      value: widget.isInstructionView,
     onChanged: (bool isOn) {
     
      print("-------->>>>.. $isOn");

      setState(() {
        widget.isInstructionView = isOn;
        print("------->>>>>> ${widget.isInstructionView}");
      });
    },
    activeColor: Colors.green,
    activeTrackColor: Colors.greenAccent,
    inactiveTrackColor: Colors.grey,
    inactiveThumbColor: Colors.grey,
  ),
  ),
  ),
          ],
        ),

           Divider(
        color: Colors.grey,
      ),

        InkWell(
          splashColor: Colors.indigoAccent,
          onTap: (){
         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ChatScreen()),
  );
          },
          child:  Container(
           margin: EdgeInsets.fromLTRB(30, 20, 0, 20),
           child:  Align(
            alignment: Alignment.topLeft,
            child:   Text('Log out'.toUpperCase(),style: TextStyle(
              fontSize: 20,
              color: Colors.greenAccent,
              fontWeight: FontWeight.w600,
            ),),
          ),
         ),
        ),
          ],
        )
      ),
      ),
      ),
      
    );
  }
}
