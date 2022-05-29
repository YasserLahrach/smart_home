import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smart_home/rooms/drawing_room.dart';
import 'package:smart_home/rooms/kids_room.dart';
import 'package:smart_home/screens/login_page.dart';
import 'package:smart_home/rooms/master_room.dart';

import '../rooms/bed_room.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(
          user.email!,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 0,
        actions: [
          TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.deepPurpleAccent,
                textStyle: TextStyle(fontSize: 13, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                backgroundColor: Colors.lime[100],
              ),
              onPressed: (){
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.exit_to_app),
              label: Text("Sign Out")),
        ],

      ),*/
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/iot_background_blank.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 300.0),
              child: ElevatedButton.icon(
                onPressed: (){
                  FirebaseAuth.instance.signOut();
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.black87,
                  size: 30,
                ),
                label: Text(""),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'My House',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xF3ADBEFF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '22°C',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Inside Temp',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Column(
                                children: [
                                  Text(
                                    '30°C',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Outside Temp',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  '6 %',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Humidity',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Column(
                                children: [
                                  Text(
                                    '3',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Devices On',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Room',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            /*SizedBox(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Living Room'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Bedroom'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Kids Room'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Drawing Room'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => MasterRoom()));
                        },
                        child: Text('Master Bedroom', style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => BedRoom()));
                      },
                      child: Text('Bedroom',style: TextStyle(color: Colors.blue),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => KidsRoom()));
                        },
                        child: Text('Kids Bedroom',style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => DrawingRoom()));
                      },
                      child: Text('Drawing Room',style: TextStyle(color: Colors.blue),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Routine',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.sunny, color: Colors.blue,),
                        label: Text("Morning",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.door_back_door, color: Colors.blue,),
                        label: Text("I'm out",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.home, color: Colors.blue,),
                        label: Text("Back Home",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.party_mode, color: Colors.blue,),
                        label: Text("Party Time",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.bed, color: Colors.blue,),
                        label: Text("Sleep Time",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Recently used device',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.tv, color: Colors.blue,),
                        label: Text("TV",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.kitchen, color: Colors.blue,),
                        label: Text("Fridge",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.local_laundry_service, color: Colors.blue,),
                        label: Text("Washing Machine",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.fireplace, color: Colors.blue,),
                        label: Text("Oven",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.lightbulb, color: Colors.blue,),
                        label: Text("Bedroom Bulb",style: TextStyle(color: Colors.blue),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
