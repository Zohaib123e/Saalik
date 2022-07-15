

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/pages/adds_page.dart';
import 'package:flutter_application_1/pages/chat_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';







class ConvexAppExample extends StatefulWidget {
  const ConvexAppExample({Key? key}) : super(key: key);

  @override
  _ConvexAppExampleState createState() => _ConvexAppExampleState();
}

class _ConvexAppExampleState extends State<ConvexAppExample> {
  int currentTab = 0;
  final List<Widget> screens =[
    Home_page(),
    Chat_page(),
    Adds_page(),
    Profile_page(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home_page();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          showDialog(
            
      context: context,
      
      builder: (context) => AlertDialog(
        title: Text("What do you want to sell?"),
        
        actions: [
          Spacer(),
          SizedBox.fromSize(
  size: Size(56, 56), // button width and height
  child: Center(
    child: Material(
      color: Colors.white, // button color
      child: InkWell(
        splashColor: Colors.white, // splash color
        onTap: () {}, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.phone_android_rounded),
            Spacer(),// icon
            Text("Mobile"), // text
          ],
        ),
      ),
    ),
  ),
),
Spacer(),
Spacer(),
Spacer(),
  SizedBox.fromSize(
  size: Size(56, 56), // button width and height
  child: Center(
    child: Material(
      color: Colors.white, // button color
      child: InkWell(
        splashColor: Colors.white, // splash color
        onTap: () {}, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.laptop_chromebook_rounded),
            Spacer(),// icon
            Text("Laptop"), // text
          ],
        ),
      ),
    ),
  ),
),
Spacer(),
Spacer(),
Spacer(),
 SizedBox.fromSize(
  size: Size(56, 56), // button width and height
  child: Center(
    child: Material(
      color: Colors.white, // button color
      child: InkWell(
        splashColor: Colors.white, // splash color
        onTap: () {}, // button pressed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.tablet_android_rounded),
            Spacer(),// icon
            Text("Tablet"), // text
          ],
        ),
      ),
    ),
  ),
),
Spacer(),
Spacer(),
        ],
        
      ),
     
    );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                 MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Home_page();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.orange : Colors.black,
                        
                        ),
                        Text('Home',style: TextStyle(color: currentTab == 0 ? Colors.orange : Colors.white),
                        )
                      ],
                    ),
                  ),
                   MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Chat_page();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 1 ? Colors.orange : Colors.black,
                        
                        ),
                        Text('Chat',style: TextStyle(color: currentTab == 1 ? Colors.orange : Colors.white),
                        )
                      ],
                    ),
                  )
                  
                ],
              
              ),
             Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                 MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Adds_page();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: currentTab == 2 ? Colors.orange : Colors.black,
                        
                        ),
                        Text('My Ads',style: TextStyle(color: currentTab == 2 ? Colors.orange : Colors.white),
                        )
                      ],
                    ),
                  ),
                   MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Profile_page();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          color: currentTab == 3 ? Colors.orange : Colors.black,
                        
                        ),
                        Text('Account',style: TextStyle(color: currentTab == 3 ? Colors.orange : Colors.white),
                        )
                      ],
                    ),
                  )
                  
                ],
              
              )

            ],
          ),
        ),
      ),

      
      
     
    );
   
  }
  
}