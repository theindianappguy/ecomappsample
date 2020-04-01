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
               Text("Todays Trending", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Color(0xff000000)),),
                 SizedBox(
                   width: 8,
                 ),
               Text("20th May", style: TextStyle(color: Colors.grey),)
             ],),

             TrendingTile()
           ],),
       ),
     ),
    );
  }
}


/// Trending tile

class TrendingTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Row(children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Image.asset("assets/image.png"),
              Container(
                margin: EdgeInsets.only(left: 8, top: 8),
                padding: EdgeInsets.all(8),
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   colors: [ const Color(0xff8EA2FF).withOpacity(0.5), const Color(0xff557AC7).withOpacity(0.5) ]
                 )
               ),
                width: 50,
                child: Text("\$30", style: TextStyle(color: Colors.white),),
              )
          ],),
        ),

        SizedBox(
          width: 17,
        ),

        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text("Product Name", style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
            SizedBox(height: 4,),
            Text("Store name", style: TextStyle(fontSize: 18, color: Colors.black38),),
              SizedBox(height: 8,),
            Row(children: <Widget>[
              RatingStars(4),
              SizedBox(width: 8,),
              Text("(301)", style: TextStyle(fontSize: 15, color: Colors.black38),)
            ],),

          ],),)
      ],),
    );
  }
}


class RatingStars extends StatelessWidget {

  double starRating;
  RatingStars(this.starRating);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Image.asset(starRating >= 1 ? "assets/star.png": "assets/stargrey.png", height: 15,),
        SizedBox(
          width: 4,
        ),
        Image.asset( starRating >= 2 ?"assets/star.png": "assets/stargrey.png", height: 15,),
        SizedBox(
          width: 4,
        ),
        Image.asset( starRating >= 3 ? "assets/star.png": "assets/stargrey.png", height: 15,),
        SizedBox(
          width: 4,
        ),
        Image.asset( starRating >= 4 ? "assets/star.png" : "assets/stargrey.png", height: 15,),
        SizedBox(
          width: 4,
        ),
        Image.asset( starRating == 5 ? "assets/star.png" : "assets/stargrey.png", height: 15,),

      ],),
    );
  }
}
