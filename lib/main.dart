import 'package:flutter/material.dart';

import 'Trainner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
     routes: {
        "/":(context)=>Homepage(),
       "trainner":(context)=>Trainner(),
     },


    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipRRect(borderRadius: BorderRadius.circular(40),child: Image.asset("assets/Profile.jpg"),
          ),
          Column(
            children: [Text("Current Location",style: TextStyle(color: Colors.grey,fontSize: 20),),
            Row(children: [Icon(Icons.location_history),
              DropdownButton<String>(
                value: 'Bangolore',
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String? newValue) {},
                items: <String>['Dhilli', 'Chennai', 'Bangolore']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),],)
            ],
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
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
              child: Column(
                children: [
                  Row(
                  children: [Text("Hello",
                    style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text("Dilani",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)],
                ),
                SizedBox(height: 10,),
                TextField(decoration: InputDecoration(
                    prefixIcon:Icon(Icons.search),
                    hintText: "search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25),), ),
                    ),),],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(25.0),topLeft:Radius.circular(25) ),),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(25),
                child: Image.asset("assets/3.jpg",fit: BoxFit.cover,),),


            SizedBox(height: 10,),
                Text("Yoga Kriya's",style: TextStyle(fontSize: 20),),
                Expanded(
                  child: Row(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(25),
                        child: Image.asset("assets/3.jpg",fit: BoxFit.cover,height: 200,width: 150,),),
                      ClipRRect(borderRadius: BorderRadius.circular(25),
                        child: Image.asset("assets/3.jpg",fit: BoxFit.cover,),),],
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white60,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.call_to_action),label: "Action"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
        ],
      ),

    );
  }
}

