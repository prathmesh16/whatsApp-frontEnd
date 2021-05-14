import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whats_app_clone/models/UserChat.dart';

class UserChatCard extends StatefulWidget{
  UserChat chat; 

  UserChatCard({this.chat});

  @override
  _MyUserChatCard createState() => _MyUserChatCard(chat: chat);
}

class _MyUserChatCard extends State<UserChatCard>{
  UserChat chat;

  _MyUserChatCard({this.chat});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.5),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.network(
                    chat.profile,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Text(
                            chat.userName,
                            style: TextStyle(color: Colors.black,fontSize: 17,fontWeight:FontWeight.w100),
                          ),
                          Text(
                            chat.lastMessageTime,
                            style: TextStyle(color: Colors.black54,fontSize: 12),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children:<Widget> [
                              _showLastMessage(chat),
                              Container(
                                margin: EdgeInsets.only(left:5),
                                child: Text(
                                  chat.lastMessage,
                                  style: TextStyle(color: Colors.black54),
                                  ),
                              ),
                            ],
                          ),
                          _showUnreadMessagesCount(chat.unreadMessagesCount),
                        ],
                      )
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

  Widget _showUnreadMessagesCount(int count)
  {
    if(count==0)
      return Text('');
    return Container(
            height: 18,
            width: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(9)
            ),
            child:Text(count.toString(),style: TextStyle(color: Colors.white,fontSize: 11),),
          );  
  }

  Widget _showLastMessage(UserChat chat)
  {
    if(!chat.isLastMessageMine)
      return Text('');

    switch(chat.status)
    {
      case MessageStatus.SENT:
        return Icon(Icons.check_rounded,color: Colors.grey,size: 17,);
      case MessageStatus.RECEIVED:
        return Icon(Icons.done_all, color:Colors.grey,size: 17,);
      case MessageStatus.READ:
        return Icon(Icons.done_all, color:Colors.lightBlueAccent,size: 17,);
    }
  }
}