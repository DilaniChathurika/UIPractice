import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trainner extends StatelessWidget {
  const Trainner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.dashboard_rounded))
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/1.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Yoga Trainner ",
                style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            decoration:BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(25) ),),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(25) ),),
                  child: Row(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(25),child: Image.asset("assets/2.jpg")),
                    Column(
                      children: [Text("Klara Joen"),Row(children: [Text("Yaga Trainner"),Icon(Icons.star)],),
                      SizedBox(height: 8,),
                      Row(children: [
                      Text("10.00 pm - 2.00 p.m"),SizedBox(width: 20,),
                      Text("View Profile"),IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right_sharp),)],)],
                    ),],
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )

    );
  }
}
