import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smart_home/screens/login_page.dart';

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
      appBar: AppBar(
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

      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.lightBlue,
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  Text(
                    'My House',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Column(
                            children: [
                              Text(
                                '22°C',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                'Inside Temp',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Column(
                              children: [
                                Text(
                                  '30°C',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  'Outside Temp',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Column(
                            children: [
                              Text(
                                '6 %',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                'Humidity',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Column(
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 25,
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
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Room',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              /*SizedBox(
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Living Room'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Bedroom'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
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
                          primary: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Drawing Room'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text('Master Bedroom'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Bedroom'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text('Kids Bedroom'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Drawing Room'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Routine',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                child: Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.sunny),
                            label: Text("Morning"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.door_back_door),
                            label: Text("I'm out"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.home),
                            label: Text("Back Home"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.party_mode),
                            label: Text("Party Time"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.bed),
                            label: Text("Sleep Time"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Recently used device',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.tv),
                            label: Text("TV"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.kitchen),
                            label: Text("Fridge"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.local_laundry_service),
                            label: Text("Washing Machine"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.fireplace),
                            label: Text("Oven"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.lightbulb),
                            label: Text("Bedroom Bulb"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
