// ignore_for_file: use_key_in_widget_constructors, unused_label, prefer_const_constructors, unnecessary_this, prefer_const_literals_to_create_immutables, unused_local_variable, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:test_proj/pages/homePage.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MyApp());


  
 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App ni hero',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
       
        appBarTheme: AppBarTheme(
        backgroundColor: Colors.pink, 
              ), 
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Homepage() ,
    );
  }
}






