import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:routing/Route_name.dart';
class Signup extends StatefulWidget {
   Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  final _control1=TextEditingController();
  final _control2=TextEditingController();
  final _control3=TextEditingController();
  late Map data1;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup Page"),
        centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:   [
          Padding(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: TextField(
              controller: _control1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'FirstName',
                hintStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                ),
                suffixIcon: IconButton(icon:Icon(Icons.clear),
                  onPressed: (){
                    _control1.clear();
                  },),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: TextField(
              controller: _control2,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                ),
                suffixIcon: IconButton(icon:Icon(Icons.clear),
                  onPressed: (){
                    _control2.clear();
                  },),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: TextField(
              controller: _control3,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                ),
                suffixIcon: IconButton(icon:Icon(Icons.clear),
                  onPressed: (){
                    _control3.clear();
                  },),

              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    data1={
                      'email':_control2.text,
                      'pass':_control3.text};
                  });
                  Navigator.pop(context);
                  Navigator.pushNamed(context,RouteName.login,
                  arguments: data1);

                },
                child: Text("Create Account",
                  style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                  fontSize: 15),
                ),),
            ],
          )

        ],
      ),
    );
  }
}
