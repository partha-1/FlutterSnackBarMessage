import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }

}

class HomeActivity extends StatelessWidget{

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );

  }


  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("partha"),
        actions: [
          IconButton(onPressed:() {MySnackBar("Account",context);}, icon: Icon(Icons.account_circle_sharp)),
          IconButton(onPressed:() {MySnackBar("Search",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed:() {MySnackBar("Settings",context);}, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }

}