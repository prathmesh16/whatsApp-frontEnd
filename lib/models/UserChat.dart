enum MessageStatus{SENT,RECEIVED,READ}

class UserChat{
  String profile;
  String userName;
  String lastMessage;
  String lastMessageTime;
  bool isLastMessageMine;
  MessageStatus status;
  int unreadMessagesCount;

  UserChat({this.profile,this.userName,this.lastMessage,this.lastMessageTime,this.isLastMessageMine,this.status,this.unreadMessagesCount});
  
}