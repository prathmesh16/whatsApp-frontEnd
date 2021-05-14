import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_clone/models/user_status.dart';
import 'package:whats_app_clone/ui/user_status_card.dart';

class UserStatusScreen extends StatefulWidget{
    
  @override
  UserStatusScreenState createState() => UserStatusScreenState();
}

class UserStatusScreenState extends State<UserStatusScreen>
{

  List<UserStatus> userStatus = [
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Ajinkya Patole",time:"Today, 10:02 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Prasad",time:"Today, 8:12 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Omkar Patil",time:"Today, 7:07 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Adesh Deshmukh",time:"Today, 7:01 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Alok",time:"Today, 5:05 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Ajinkya Patole",time:"Today, 10:02 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Prasad",time:"Today, 8:12 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Omkar Patil",time:"Today, 7:07 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Adesh Deshmukh",time:"Today, 7:01 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Alok",time:"Today, 5:05 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Ajinkya Patole",time:"Today, 10:02 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Prasad",time:"Today, 8:12 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Omkar Patil",time:"Today, 7:07 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Adesh Deshmukh",time:"Today, 7:01 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Alok",time:"Today, 5:05 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Ajinkya Patole",time:"Today, 10:02 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Prasad",time:"Today, 8:12 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Omkar Patil",time:"Today, 7:07 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Adesh Deshmukh",time:"Today, 7:01 pm"),
    new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Alok",time:"Today, 5:05 pm"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        children:<Widget> [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10.5),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                              "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
                              height: 50.0,
                              width: 50.0,
                          ),
                        ),
                    
                    Expanded(
                      child: Container(
                      margin: EdgeInsets.only(left:15,right: 5),
                        child: Column( 
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "My status",
                              style: TextStyle(color: Colors.black,fontSize: 17,fontWeight:FontWeight.w100),
                            ),
                            Text(
                              "Tap to add status update",
                              style: TextStyle(color: Colors.black54,fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                  ],
                ),
                
              ),
              Positioned(
                top:45,
                left: 45,
                child:Container(
                  height: 20,
                  width: 20,
                  child: Icon(Icons.add_rounded,color: Colors.white,size: 19,),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          1.0,
                          1.0,
                        ),
                        blurRadius: 5,
                     ),
                    ],
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ) 
              ),
            ],
          ),
          
          Container(
            height: 30,
            padding: EdgeInsets.only(left:15,top:5,bottom:5),
            child:Text("Recent updates", style: TextStyle(color: Colors.black54),),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
          ),
          UserStatusCard(userStatus: new UserStatus(photo:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Pratik Kanade",time:"24 minutes ago",isSeen: false),),
          Container(
            height: 30,
            padding: EdgeInsets.only(left:15,top:5,bottom:5),
            child:Text("Viewed updates", style: TextStyle(color: Colors.black54),),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: userStatus.length,
            itemBuilder: (BuildContext context, int index) {
              return UserStatusCard(userStatus:userStatus[index]);
           },
          ),
        ],
      );
  }
}