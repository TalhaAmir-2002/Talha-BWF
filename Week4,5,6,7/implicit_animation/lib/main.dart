
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isExpanded = false;
  bool _isrotated =false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Implicit Animation'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: _isrotated?  Curves.bounceInOut: Curves.slowMiddle,
                width: _isExpanded ? 200.0 : 100.0,
                height: _isExpanded ? 200.0 : 100.0,
                color: _isExpanded ? Colors.blue : Colors.green,
                transform: _isrotated?Matrix4.rotationZ(0.25): Matrix4.rotationZ(0),
                child: Center(
                  child: Text(
                    _isExpanded ? 'Expanded' : 'Collapsed',
                    style:  TextStyle(
                      // color: Colors.white,
                      fontSize: _isExpanded ? 24.0: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: (){
                  setState(() {
                    _isExpanded=!_isExpanded;
                  });
                },
                  backgroundColor: Colors.blueAccent,

                child: const Text('Size',style:TextStyle(
                  color: Colors.white,
                  fontSize: 10
                ),),),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    _isrotated=!_isrotated;
                  });
                },
                  backgroundColor: Colors.blueAccent,
                  child: const Text('Rotate',style:TextStyle(
                      color: Colors.white,
                      fontSize: 10
                  ),),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
