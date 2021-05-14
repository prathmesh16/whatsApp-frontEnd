
import 'package:flutter/material.dart';
import 'package:whats_app_clone/ui/UserChatCard.dart';
import 'package:whats_app_clone/ui/user_status_screen.dart';

import 'models/UserChat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       return MaterialApp(
          title: 'Flutter Demo',
          theme:ThemeData(
            primaryColor: Color(0xff075e54),
            indicatorColor: Colors.white,
            primaryColorDark: Color(0xFF128C7E),
            primaryIconTheme: IconThemeData(
              color: Colors.white,
            ),
          ),
          home:MyHomePage(),

       );
  }
}
class MyHomePage extends StatefulWidget{

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  List<UserChat> userChats=[
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Prathmesh Jadhav",lastMessage:"Complete",lastMessageTime:"8:35 pm",isLastMessageMine:true,status: MessageStatus.READ,unreadMessagesCount: 0 ),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Rider OP",lastMessage:"Okay",lastMessageTime:"8:32 pm",isLastMessageMine:false,status:null,unreadMessagesCount: 1),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Viki Nale",lastMessage:"Same to Same",lastMessageTime:"8:26 pm",isLastMessageMine:true,status: MessageStatus.SENT,unreadMessagesCount: 0),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Mahavir",lastMessage:"Fine",lastMessageTime:"8:00 pm",isLastMessageMine:false,status: null,unreadMessagesCount: 2),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Yash Gunjal",lastMessage:"Thank you!",lastMessageTime:"7:34 pm",isLastMessageMine:true,status: MessageStatus.RECEIVED,unreadMessagesCount: 0),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Prathmesh Jadhav",lastMessage:"Complete",lastMessageTime:"8:35 pm",isLastMessageMine:true,status: MessageStatus.READ,unreadMessagesCount: 0 ),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Rider OP",lastMessage:"Okay",lastMessageTime:"8:32 pm",isLastMessageMine:false,status:null,unreadMessagesCount: 1),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Viki Nale",lastMessage:"Same to Same",lastMessageTime:"8:26 pm",isLastMessageMine:true,status: MessageStatus.SENT,unreadMessagesCount: 0),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Mahavir",lastMessage:"Fine",lastMessageTime:"8:00 pm",isLastMessageMine:false,status: null,unreadMessagesCount: 2),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Yash Gunjal",lastMessage:"Thank you!",lastMessageTime:"7:34 pm",isLastMessageMine:true,status: MessageStatus.RECEIVED,unreadMessagesCount: 0),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Prathmesh Jadhav",lastMessage:"Complete",lastMessageTime:"8:35 pm",isLastMessageMine:true,status: MessageStatus.READ,unreadMessagesCount: 0 ),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Rider OP",lastMessage:"Okay",lastMessageTime:"8:32 pm",isLastMessageMine:false,status:null,unreadMessagesCount: 1),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Viki Nale",lastMessage:"Same to Same",lastMessageTime:"8:26 pm",isLastMessageMine:true,status: MessageStatus.SENT,unreadMessagesCount: 0),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Mahavir",lastMessage:"Fine",lastMessageTime:"8:00 pm",isLastMessageMine:false,status: null,unreadMessagesCount: 2),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Yash Gunjal",lastMessage:"Thank you!",lastMessageTime:"7:34 pm",isLastMessageMine:true,status: MessageStatus.RECEIVED,unreadMessagesCount: 0),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Prathmesh Jadhav",lastMessage:"Complete",lastMessageTime:"8:35 pm",isLastMessageMine:true,status: MessageStatus.READ,unreadMessagesCount: 0 ),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Rider OP",lastMessage:"Okay",lastMessageTime:"8:32 pm",isLastMessageMine:false,status:null,unreadMessagesCount: 1),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Viki Nale",lastMessage:"Same to Same",lastMessageTime:"8:26 pm",isLastMessageMine:true,status: MessageStatus.SENT,unreadMessagesCount: 0),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Mahavir",lastMessage:"Fine",lastMessageTime:"8:00 pm",isLastMessageMine:false,status: null,unreadMessagesCount: 2),
      new UserChat(profile:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",userName:"Yash Gunjal",lastMessage:"Thank you!",lastMessageTime:"7:34 pm",isLastMessageMine:true,status: MessageStatus.RECEIVED,unreadMessagesCount: 0),
      ];
  TabController tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(vsync: this, length: 4);
    tabController.index=1;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search,size: 27,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert),
          ),
        ],
        bottom: _tabBar()
      ),
      body:TabBarView(
        controller: tabController,
        children: [
          Icon(Icons.camera_alt),
          _makeChatList(),
          UserStatusScreen(),
          Text("Call Screen"),
        ],
      ),
    );
  }
  Widget _tabBar()
  {
    return TabBar(
      isScrollable: true,
      tabs: [
        Icon(Icons.camera_alt),
        Container(
          width:(MediaQuery.of(context).size.width*2)/10,
          child: Tab(child: Text("CHATS"),)
        ),
        Container(
          width:(MediaQuery.of(context).size.width*2)/10,
          child: Tab(child: Text("STATUS",))
        ),
        Container(
          width:(MediaQuery.of(context).size.width*2)/10,
          child: Tab(child: Text("CALLS",))
        ),
      ], 
      indicatorColor: Colors.white,
      controller: tabController,
      labelStyle: TextStyle(fontWeight:FontWeight.w700),
      unselectedLabelStyle: TextStyle(fontWeight:FontWeight.w500),
    );
  }
  Widget _makeChatList()
  {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context,index)
        {
          return UserChatCard(chat:userChats[index]);
        }
      ),
    );
  }
}
