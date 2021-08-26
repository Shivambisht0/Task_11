import 'package:flutter/material.dart';

class Services extends StatelessWidget {
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
                          'https://images.unsplash.com/photo-1608324777753-5d2f6e547b1b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzZ8fHN0dWR5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      " Services Provided:-\n\n👉Launch Docker Container\n👉Show Docker Images\n👉Show Docker Containers\n👉Delete Docker Container",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.orange.shade900,
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
