import 'package:flutter/material.dart';

import 'otpScreen.dart';


class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  // List<String> litems = ["1","2","Third","4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      top: true,
      right: false,
      left: false,
      bottom: false,
      child: ListView.builder(
      itemCount: 15,
      itemBuilder: (context,i) => Column(
        children: <Widget>[
          Divider(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar( 
                  child:  ClipOval(
                   child:      SizedBox(
                     width: 180.0,
                     height: 180.0,
                     child: Image.asset('Asset/images1.jpg'),
                   ),
                       ),
                  radius: 28,
                  backgroundColor: Colors.grey,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  Text('Adam Holand',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.40,
                    ),
                  Text('Just now',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400),
                    ),
                    
                  ],
                 
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('Hello how are you?',
                    style: TextStyle(
                      fontWeight: FontWeight.w300),
                      ),
                  ),
        
          ),
        ],
      ),
    ),
    ),  
   floatingActionButton: FloatingActionButton(
      elevation: 5.0,
      tooltip: "Add people",
      child:  Icon(Icons.add),
      backgroundColor:  Colors.green,
      //Color(0xFFE57373),
      onPressed: (){
          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => OtpScreen   ()),
  );
      }
    )
    );
    
  }
}