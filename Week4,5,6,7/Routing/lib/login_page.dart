import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routing/Route_name.dart';

class Login extends StatefulWidget {
  dynamic ?info;
  Login({Key? key,required this.info}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final _txtc =TextEditingController();
  final _txtc1 =TextEditingController();
  late Map data;
  String confirm='';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"),
      centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:   [
          Text(confirm),
          Padding(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: TextField(
              controller: _txtc,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                ),
                suffixIcon: IconButton(icon:Icon(CupertinoIcons.clear),
                onPressed: (){
                  _txtc.clear();
                },),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: TextField(
              controller: _txtc1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                ),
                suffixIcon: IconButton(icon:Icon(CupertinoIcons.clear),
                  onPressed: (){
                    _txtc1.clear();
                  },),

              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.pushNamed(context, RouteName.signup,
                arguments: data);}, child: Text("Create an Account!"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18))
              ),),
              ElevatedButton(
                onPressed: (){
                  print('helo');
                  print(widget.info['email']);
                  print(widget.info['pass']);
                  if(widget.info['email']==_txtc.text && widget.info['pass']==_txtc1.text){
                    Navigator.pushNamed(context, RouteName.sucess);
                  }

              },
                  child: Text("Login",
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,),
              ),),
            ],
          )

        ],
      ),
    );
  }

}
