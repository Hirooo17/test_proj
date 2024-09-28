import 'package:flutter/material.dart';


// ignore: must_be_immutable
class TextInput extends StatefulWidget {
  final Function(String) callback;
  
   // ignore: prefer_const_constructors_in_immutables
   TextInput(this.callback);
  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final controller = TextEditingController();
  @override
  void dispose(){
    super.dispose();
    controller.dispose();
  }

  void click(){
    widget.callback(controller.text);
     FocusScope.of(context).unfocus(); 
     controller.clear();
     

  }


  @override
  Widget build(BuildContext context) {
    
    return  TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.message), labelText: "Enter name", 
        suffixIcon: IconButton(
          icon: Icon(Icons.send), 
          hoverColor: Colors.pink,
          tooltip: "Send the message",
          onPressed: this.click)
          ),
        );
    
  }
}