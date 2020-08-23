import 'package:flutter/material.dart';
import 'package:mishkri/MaterialScreens/screens/dashboard.dart';
import 'package:mishkri/MaterialScreens/screens/NewSandwich/new_sandwich.dart';
import 'package:mishkri/MaterialScreens/screens/order.dart';
import 'package:mishkri/MaterialScreens/screens/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color mishkricolor = Colors.red;
  
  //Properties

  int currentTab = 0;

  final List<Widget> screens = [Dashboard(), Profile(), NewSandwich(), Order()];

  //Active Page (Tab)

  Widget currentScreen = Dashboard();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: mishkricolor,
        title: FlatButton(
            onPressed: () {
              setState(() {
                currentScreen = Dashboard();
                currentTab = 0;
              });
            },
            child: Text(
              'Mishkri',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            )),
        actions: <Widget>[
          currentTab == 2 ? IconButton(
              icon: Icon(Icons.send),
              onPressed: (){},
            ) : SizedBox()
          ,
        ],
      ),
      body: PageStorage(child: currentScreen, bucket: bucket),

      //FAB bottom

      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewSandwich()));
        },
      ),

      //FAB Position

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Bottom App Bar

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Profile();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: currentTab == 1 ? mishkricolor : Colors.grey,
                      ),
                      Text(
                        'Datos',
                        style: TextStyle(
                          color:
                              currentTab == 1 ? mishkricolor : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox(height: 10.0)),
              Expanded(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Order();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.motorcycle,
                        color: currentTab == 2 ? mishkricolor : Colors.grey,
                      ),
                      Text(
                        'Pedir',
                        style: TextStyle(
                          color:
                              currentTab == 2 ? mishkricolor : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}