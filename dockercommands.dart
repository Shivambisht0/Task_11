import 'package:flutter/material.dart';

class DockerCommands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                height: 740,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://c4.wallpaperflare.com/wallpaper/1010/207/702/docker-containers-minimalism-typography-wallpaper-preview.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Docker Commands",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "1. Launch Container:- docker run  -it --name container_name image_name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(
                          height: 289,
                        ),
                        Container(
                          // padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "2. Show Docker Images:- docker images",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "3. Show all Docker Containers:- docker ps -a",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            "4. Stop running Docker Container:- docker stop container_name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            "5. Delete Docker Container:- docker rm container_name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: 10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        /*border:
            Border.all(color: Colors.blue, width: 6, style: BorderStyle.solid),
            */
      ),
    );
  }
}
