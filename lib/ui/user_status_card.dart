import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_clone/models/UserChat.dart';
import 'package:whats_app_clone/models/user_status.dart';

class UserStatusCard extends StatelessWidget{

  UserStatus userStatus;

  UserStatusCard({this.userStatus});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.5),
          child: Row(
            children: <Widget>[
              Container(
                height: 56,
                width: 56,
                padding: EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                  color: (userStatus.isSeen)?Colors.grey[400]: Color(0xFF159d8d),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Container(
                  height: 54,
                  width: 54,
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(
                        userStatus.photo,
                        height: 50.0,
                        width: 50.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                margin: EdgeInsets.only(left:15,right: 5),
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userStatus.userName,
                        style: TextStyle(color: Colors.black,fontSize: 17,fontWeight:FontWeight.w100),
                      ),
                      Text(
                        userStatus.time,
                        style: TextStyle(color: Colors.black54,fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
             
            ],
          ),
          
        ),
         Divider(
            color: Colors.grey,
            height: 2,
            thickness: 0.25,
            indent: 75,
            endIndent: 15,
          )
      ],
    );
  }
}