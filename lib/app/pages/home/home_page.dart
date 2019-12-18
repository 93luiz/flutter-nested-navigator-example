import 'package:flutter/material.dart';
import 'package:navigation_test/app/pages/home/pages/detail/detail_module.dart';
import 'package:navigation_test/app/widgets/tabNavigator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  int currentTab = 0;
  final navigatorKey = GlobalKey<NavigatorState>();
  TabController tabController;
  int currentIndex = 0;
  Size get size => MediaQuery.of(context).size;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: currentIndex, length: 4, vsync: this);
  }

  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };

  _selectTab(int tab) {
    this.setState(() {
      currentTab = tab;
    });

    tabController.animateTo(tab);
  }

  Widget _buildOffstageNavigator(int item) {
    return Offstage(
      offstage: this.currentTab != item,
      child: TabNavigator(
        navigatorKey: navigatorKeys[item],
        tabItem: item,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home"),
      // ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: this.tabController,
        children: <Widget>[
          Navigator(
            key: navigatorKeys[0],
            onGenerateRoute: (reouteSettings) => 
              MaterialPageRoute(builder: (context) => DetailModule()),
          ),
          Navigator(
            key: navigatorKeys[1],
            onGenerateRoute: (reouteSettings) => 
              MaterialPageRoute(builder: (context) => DetailModule()),
          ),
          Navigator(
            key: navigatorKeys[2],
            onGenerateRoute: (reouteSettings) => 
              MaterialPageRoute(builder: (context) => DetailModule()),
          ),
          Navigator(
            key: navigatorKeys[3],
            onGenerateRoute: (reouteSettings) => 
              MaterialPageRoute(builder: (context) => DetailModule()
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentTab,
        onTap: this._selectTab,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.satellite),
            title: Text("Tab 1"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.satellite),
            title: Text("Tab 2"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.satellite),
            title: Text("Tab 3"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.satellite),
            title: Text("Tab 4"),
          ),
        ],
      ),
    );
  }
}
