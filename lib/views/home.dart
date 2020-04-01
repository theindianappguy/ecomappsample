import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Container(
         margin: EdgeInsets.symmetric(horizontal: 24),
         child: Column(
           children: <Widget>[
             SizedBox(
               height: 16,
             ),
             Material(
               elevation: 4,
                 shadowColor: Colors.grey.withOpacity(0.5),
                 borderRadius: BorderRadius.circular(8),
               child: Container(
                 decoration: BoxDecoration(color: Colors.white,
                   borderRadius: BorderRadius.circular(8)
                 ),
                 padding: EdgeInsets.symmetric(horizontal: 16),

                 height: 55,
                 child: Row(children: <Widget>[
                   Expanded(
                     child: TextField(
                       decoration: InputDecoration(
                          hintText: "Search",
                          ),
                     ),
                   ),
                   Icon(Icons.search)
                 ],),
               ),
             ),
             SizedBox(
               height: 35,
             ),
             Row(
               children: <Widget>[
               Text("Todays Trending", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),),
               Text("20th May")
             ],)
           ],),
       ),
     ),
    );
  }
}
