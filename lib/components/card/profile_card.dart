import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_app/models/user.dart';

class ProfileCard extends StatelessWidget {
  final User? user;

  ProfileCard({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Card(
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 64,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/ambuj.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user!.title!,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        user!.role!,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        DateFormat().format(user!.joiningDate!),
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
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
