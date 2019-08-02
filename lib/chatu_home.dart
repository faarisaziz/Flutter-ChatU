import 'package:flutter/material.dart';
import 'package:flutter_chatu/pages/chat_screen.dart';
import 'package:flutter_chatu/pages/group_screen.dart';
import 'package:flutter_chatu/pages/profile_screen.dart';

// If want Use Top Tabbar

// class ChatUHome extends StatefulWidget {
//   @override
//   _ChatUHomeState createState() => _ChatUHomeState();
// }

// class _ChatUHomeState extends State<ChatUHome>
//     with SingleTickerProviderStateMixin {
//   TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(vsync: this, initialIndex: 0, length: 3);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ChatU'),
//         elevation: 0.7,
//         bottom: PreferredSize(
//           preferredSize: Size(200.0, 45.0),
//           child: TabBar(
//             controller: _tabController,
//             indicatorColor: Colors.white,
//             tabs: <Widget>[
//               Tab(
//                 icon: Icon(
//                   Icons.chat_bubble_outline,
//                 ),
//                 child: Text(
//                   'Chat',
//                   style: TextStyle(fontSize: 12.0),
//                 ),
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.people,
//                 ),
//                 child: Text(
//                   'Group',
//                   style: TextStyle(fontSize: 12.0),
//                 ),
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.person,
//                 ),
//                 child: Text(
//                   'Profile',
//                   style: TextStyle(fontSize: 12.0),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.more_vert),
//             onPressed: () => print('Open Dialog!'),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 5.0),
//           ),
//         ],
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: <Widget>[
//           ChatScreen(),
//           GroupScreen(),
//           ProfileScreen(),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Theme.of(context).accentColor,
//         child: Icon(
//           Icons.message,
//           color: Colors.white,
//         ),
//         onPressed: () => print('open chat'),
//       ),
//     );
//   }
// }

// If Want Use Bottom Navigation

class ChatUHome extends StatefulWidget {
  @override
  _ChatUHomeState createState() => _ChatUHomeState();
}

class _ChatUHomeState extends State<ChatUHome> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    ChatScreen(),
    GroupScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatU'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => print('Open Dialog!'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
        ],
      ),
      body: Center(
        child: _children[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Group'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
