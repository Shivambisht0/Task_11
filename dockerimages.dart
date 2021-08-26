import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:imagetext11111/bottom.dart';
import 'package:url_launcher/link.dart';

main() {
  runApp(MaterialApp(
    home: MyDockerImages(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyDockerImages extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyDockerImages> {
  var x = "The output will be here ";
  late String cmd;
  late String name;
  web() async {
    var url = Uri.http("192.168.23.7", "/cgi-bin/app2.py");
    var response = await http.get(url);
    setState(
      () {
        x = response.body;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*SizedBox(
                width: 50,
              ),*/
              Container(
                child: Image(
                  alignment: Alignment.centerLeft,
                  height: 100,
                  width: 65,
                  image: NetworkImage(
                      "https://www.docker.com/sites/default/files/d8/styles/logo_ribbon/public/2021-03/jenkins_logo.png?itok=FmW8Bjdm"),
                ),
              ),
              Center(
                child: Text(
                  "DOCKER WEB UI",
                  textAlign: TextAlign.center,
                ),
              ),
              /*  */
              SizedBox(
                width: 55,
              ),
              FloatingActionButton(
                backgroundColor: Colors.blue.shade900,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => MyB(),
                      isScrollControlled: false);
                },
                splashColor: Colors.white,
                child: Icon(Icons.info),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 50,
              child: Center(
                child: Text(
                  "DOCKER SERVICES",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.blue.shade900,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Container(
                margin: EdgeInsets.all(8.0),
                width: 1111110,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    scale: 2,
                    image: NetworkImage(
                        "https://www.docker.com/sites/default/files/d8/styles/role_icon/public/2019-07/Docker-Logo-White-RGB_Vertical-BG_0.png?itok=8Tuac9I3",
                        scale: 2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 50,
              child: Center(
                child: Text(
                  "Show Docker Images",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 19,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8.0),
                      width: 1111110,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 2,
                          image: NetworkImage(
                              "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
                              scale: 0.5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 80,
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: CircleAvatar(
                        child: ElevatedButton(
                          onPressed: web,
                          child: Text(
                            "OUTPUT",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: Text(
                          "$x",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    CircleAvatar(
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              "https://www.linkedin.com/in/shivam-bist/"),
                          builder: (context, followLink) {
                            return ElevatedButton(
                                onPressed: followLink,
                                child: Text("Shivam's Linkedin "));
                          }),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
