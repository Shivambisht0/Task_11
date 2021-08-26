import 'package:flutter/material.dart';

class MyWelcome extends StatelessWidget {
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
                          'https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGxpZ2h0JTIwdGhlbWV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "#TASK_11\n\nHello Everyone,\nThis is my eleventh task and one of the Team Task of Summer Internship at LinuxWorld Informatics Pvt Ltd under the mentorship of Mr. Vimal Daga Sir . In this task I with the help of my teammates Himanshu Kumar, Priyanshu Gaur, Sudeep Gupta have created a Flutter App that will use the Python-CGI and Apache Web Server concepts to launch container with the name and image specified by the user, and finally it will also be giving information regarding Docker. \n #worldrecordholder #training #internship #makingindiafutureready #summer #summertraining \n \n \n #python #javascript #ml #dl #rightmentor #deepknowledge #linuxworld #vimaldaga #righteducation",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
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
      padding: EdgeInsets.all(40),
    );
  }
}
