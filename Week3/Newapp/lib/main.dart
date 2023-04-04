import 'package:flutter/material.dart';
import "dart:ui";

import 'package:flutter/services.dart';

void main() {
  runApp(
     MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch(selectedindex){
      case 0:
        page=home();
        break;
      case 1:
        page=more();
    }
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        title:  const Text("Store",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),),
        actions:const [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          )
        ],
      ),
     body: page,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyanAccent,
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: 'More',
          ),
        ],
        onTap: (index){
          setState(() {
            selectedindex=index;
          });
        },
        currentIndex: selectedindex,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 170,
                width: 300,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/2520829/pexels-photo-2520829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      fit: BoxFit.fitWidth,
                      scale: 50,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 10,
                      )
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text("Playstation 5",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white.withOpacity(0.7),
                          height: 1.4,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("Buy Now!",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white.withOpacity(0.8),
                          height: 1.4,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 170,
              width: 300,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/1298601/pexels-photo-1298601.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.fitWidth,
                    scale: 50,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87,
                      blurRadius: 10,
                    )
                  ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text("Xbox One",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white.withOpacity(0.7),
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text("Buy Now!",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white.withOpacity(0.8),
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height: 20,),
            Container(
              height: 170,
              width: 300,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/4523030/pexels-photo-4523030.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.fitWidth,
                    scale: 50,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87,
                      blurRadius: 10,
                    )
                  ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text("Nintendo Switch",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.grey.withOpacity(0.7),
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text("Buy Now!",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.grey.withOpacity(0.8),
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height: 20,),
            Container(
              height: 170,
              width: 300,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/3945652/pexels-photo-3945652.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    fit: BoxFit.fitWidth,
                    scale: 50,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87,
                      blurRadius: 10,
                    )
                  ]
              ),
              child: Center(
                child: TextButton(
                  onPressed: (){},
                  child: Text("Click for more!",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.grey.withOpacity(0.8),
                      height: 1.4,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

            ),

          ],
        ),
      ),
      backgroundColor: Colors.tealAccent,
    );
  }
}
class more extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children:  [
          ListTile (
            leading: Icon(Icons.settings,
            size: 25,),
            title: Text("Settings",style: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.w300,
            ),),
            onTap: (){},
          ),
          ListTile (
            leading: Icon(Icons.exit_to_app,
              size: 25,),
            title: Text("Exit",style: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.w300,
            ),),
            onTap: (){
              SystemNavigator.pop();
            },
          )

        ],

      )
    );
  }
}

