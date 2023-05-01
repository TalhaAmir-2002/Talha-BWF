import 'package:flutter/material.dart';
import 'package:routing/Route_name.dart';
class sucess extends StatelessWidget {
  const sucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Success'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container(
              child: const Center(
                child: Text("Login Success"),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
