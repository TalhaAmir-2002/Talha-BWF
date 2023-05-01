import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Route finder"),
          centerTitle: true,
        ),
        body: Column(
          children:   [
            const Image(image: NetworkImage("https://images.pexels.com/photos/2437295/pexels-photo-2437295.jpeg?auto=compress&cs=tinysrgb&w=600"),
              alignment: Alignment.topCenter,
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              title: Text("Moonshine lake campground",
                style: TextStyle(
              fontWeight: FontWeight.bold,
                  fontSize: 20,
        ),  ) ,
              subtitle: Text("Alberta",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),  ) ,
              trailing: favicon(),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.call,),
                      color: Colors.blueAccent,
                      iconSize: 30,
                    ),
                    Text("CALL",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.directions,),
                      color: Colors.blueAccent,
                      iconSize: 30,
                    ),
                    Text("ROUTE",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.share,),
                      color: Colors.blueAccent,
                      iconSize: 30,
                    ),
                    Text("SHARE",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                )
              ],
            )

          ],
        )
      ),


    );
  }
}
class favicon extends StatefulWidget {
  const favicon({Key? key}) : super(key: key);

  @override
  State<favicon> createState() => _faviconState();
}

class _faviconState extends State<favicon> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  void tooglefav(){
      setState(() {
        if(_isFavorited){
          _isFavorited=false;
          _favoriteCount-=1;
        }else{
          _isFavorited=true;
          _favoriteCount+=1;
        }
      });
    }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: (_isFavorited
              ? Icon(Icons.star)
              : Icon(Icons.star_border)),
          color: Colors.red,
          onPressed: tooglefav,
        ),
          Text("$_favoriteCount",
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),)
      ],
    );
  }
}

