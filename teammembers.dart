import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class teammembers extends StatelessWidget {
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
                          'https://images.unsplash.com/photo-1523289619259-44358ba02ba5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fHRlYW0lMjB3b3JrfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Team Mates",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(
                          height: 90,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Shivam Bist",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  "https://www.linkedin.com/in/shivam-bist/"),
                              builder: (context, followLink) {
                                return ElevatedButton(
                                    onPressed: followLink,
                                    child: Text("Shivam's Linkedin "));
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 320,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Priyanshu Gaur",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  "https://www.linkedin.com/in/shivam-bist/"),
                              builder: (context, followLink) {
                                return ElevatedButton(
                                  onPressed: followLink,
                                  child: Text("Priyanshu's Linkedin "),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Sudeep Gupta",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  "https://www.linkedin.com/in/shivam-bist/"),
                              builder: (context, followLink) {
                                return ElevatedButton(
                                  onPressed: followLink,
                                  child: Text("Sudeep's Linkedin "),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Himanshu Kumar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  "https://www.linkedin.com/in/shivam-bist/"),
                              builder: (context, followLink) {
                                return ElevatedButton(
                                  onPressed: followLink,
                                  child: Text("Himanshu's Linkedin "),
                                );
                              },
                            ),
                          ],
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
      padding: EdgeInsets.only(top: 50),
    );
  }
}
