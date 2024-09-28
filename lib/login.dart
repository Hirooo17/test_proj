

import 'package:flutter/material.dart';
import 'package:test_proj/myHomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text("hello hero"),
      foregroundColor: Colors.lightBlue,),

    body:  Body(),
   );
  }
}


class Body extends StatefulWidget {
  

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late String name;

  void click(){
      this.name = controller.text;
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(this.name) ));
  }

  

  TextEditingController controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return  Align(alignment: Alignment.center, 
                  child: Padding(
                    padding: EdgeInsets.all(10), 
                    child: TextField(controller: this.controller, 
                    decoration: InputDecoration(
                            prefixIcon: Icon(Icons.people_alt_rounded), labelText: "Enter name:",
                            border: OutlineInputBorder(borderSide: BorderSide(width: 5, color: Colors.blue)), 
                            suffixIcon: IconButton(
                              icon: Icon(Icons.login), 
                              hoverColor: Colors.pink,
                              tooltip: "Login",
                              onPressed: click,
                            )
                          ),
                        ),
                      ) ,
                     );
  }
}