import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:imagetext11111/docker.dart';
import 'package:imagetext11111/dockercontainers.dart';
import 'package:imagetext11111/dockerdelete.dart';
import 'package:imagetext11111/dockerimages.dart';
import 'package:imagetext11111/dockerstop.dart';

main() {
  runApp(MaterialApp(
    home: MyServices(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyServices extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 40, right: 40, top: 30),
              height: 300,
              child: Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Docker Web UI",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: (60),
                        backgroundColor: Colors.black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image(
                            image: NetworkImage(
                                "https://www.docker.com/sites/default/files/d8/styles/logo_ribbon/public/2021-03/jenkins_logo.png?itok=FmW8Bjdm"),
                          ),
                        ),
                      )
                      /* CircleAvatar(
                        radius: 50,
                        child: Image(
                          image: NetworkImage(
                              'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
                              scale: 0.2),
                        ),
                      ),
                      */
                    ],
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      //background color of box
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 25.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          15.0, // Move to right 10  horizontally
                          15.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Docker Services",
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Card(
                      shadowColor: Colors.orange,
                      elevation: 10,
                      child: ListTile(
                        title: Text(
                          "Launch Container",
                          // style: TextStyle(
                          // decoration: ischecked ? TextDecoration.lineThrough : null),
                        ),
                        subtitle: Text("Enter name and image"),
                        trailing: TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDocker(),
                              ),
                            )
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),

                        leading: CircleAvatar(
                          child: Image(
                            image: NetworkImage(
                                "https://img.icons8.com/nolan/2x/docker.png"),
                          ),
                        ),
                        // trailing: TaskCheckBox(ischecked, checkboxCallback),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      shadowColor: Colors.orange,
                      elevation: 10,
                      child: ListTile(
                        trailing: TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDockerImages(),
                              ),
                            )
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        title: Text(
                          "Docker images",
                          // style: TextStyle(
                          // decoration: ischecked ? TextDecoration.lineThrough : null),
                        ),
                        subtitle: Text("Show Docker Images"),
                        leading: CircleAvatar(
                          child: Image(
                            image: NetworkImage(
                                "https://img.icons8.com/ios/2x/docker.png"),
                          ),
                        ),
                        // trailing: TaskCheckBox(ischecked, checkboxCallback),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      shadowColor: Colors.orange,
                      elevation: 10,
                      child: ListTile(
                        trailing: TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDockerContainer(),
                              ),
                            )
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        title: Text(
                          "Docker Containers",
                          // style: TextStyle(
                          // decoration: ischecked ? TextDecoration.lineThrough : null),
                        ),
                        subtitle: Text("Show Docker Containers"),
                        leading: CircleAvatar(
                          child: Image(
                            image: NetworkImage(
                                "https://img.icons8.com/nolan/2x/docker.png"),
                          ),
                        ),
                        // trailing: TaskCheckBox(ischecked, checkboxCallback),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      shadowColor: Colors.orange,
                      elevation: 10,
                      child: ListTile(
                        trailing: TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDockerStop(),
                              ),
                            )
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        title: Text(
                          "Stop Running Container",
                          // style: TextStyle(
                          // decoration: ischecked ? TextDecoration.lineThrough : null),
                        ),
                        subtitle: Text("Enter name "),
                        leading: CircleAvatar(
                          child: Image(
                            image: NetworkImage(
                                "https://img.icons8.com/ios/2x/docker.png"),
                          ),
                        ),
                        // trailing: TaskCheckBox(ischecked, checkboxCallback),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      shadowColor: Colors.orange,
                      elevation: 10,
                      child: ListTile(
                        trailing: TextButton(
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyDockerDelete(),
                              ),
                            )
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                        title: Text(
                          "Delete Container",
                          // style: TextStyle(
                          // decoration: ischecked ? TextDecoration.lineThrough : null),
                        ),
                        subtitle: Text("Enter name "),
                        leading: CircleAvatar(
                          child: Image(
                            image: NetworkImage(
                                "https://img.icons8.com/nolan/2x/docker.png"),
                          ),
                        ),
                        // trailing: TaskCheckBox(ischecked, checkboxCallback),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
