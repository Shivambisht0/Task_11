import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imagetext11111/cards.dart';
import 'package:imagetext11111/docker.dart';
import 'package:imagetext11111/dockercommands.dart';
import 'package:imagetext11111/services.dart';
import 'package:imagetext11111/teammembers.dart';
import 'package:imagetext11111/welcome.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: iT(),
  ));
}

class iT extends StatefulWidget {
  const iT({Key? key}) : super(key: key);

  @override
  _iTState createState() => _iTState();
}

class _iTState extends State<iT> {
  late String cmd;
  lw() {
    if (cmd == "DOCKER" || cmd == "docker") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyServices(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(title: Text("Task_11 Flutter App + Docker")),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1531346878377-a5be20888e57?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fG9mZmljZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid),
                            ),
                            child: Text(
                              "TEAM_07_03",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://www.docker.com/sites/default/files/d8/styles/logo_ribbon/public/2021-03/jenkins_logo.png?itok=FmW8Bjdm'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 300.0,
                            child: TextField(
                              onChanged: (value) {
                                cmd = value;
                              },
                              cursorHeight: 18,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.top,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                prefix: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                      'https://www.docker.com/sites/default/files/d8/styles/role_icon/public/2019-07/horizontal-logo-monochromatic-white.png?itok=SBlK2TGU'),
                                ),
                                hintText: "Enter Service name",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            child: ElevatedButton(
                              onPressed: lw,
                              child: Text(
                                "SERVICE",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )

                  //disable single line border below the text field
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Task_11',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1497124401559-3e75ec2ed794?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmF0bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => MyWelcome(),
                  isScrollControlled: true);
            },
          ),
          ListTile(
            leading: Icon(Icons.design_services),
            title: Text('Services'),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Services(),
                  isScrollControlled: true);
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Team Members'),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => teammembers(),
                  isScrollControlled: true);
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Docker Commands'),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => DockerCommands(),
                  isScrollControlled: true);
            },
          ),
        ],
      ),
    );
  }
}
