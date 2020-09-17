import 'package:flutter/material.dart';
import 'package:test_app/models/User.dart';

class ProfileCard extends StatelessWidget {
  final List<User> _users = [
    User(
      title: 'Ambuj Kumar',
      role: 'Backend Developer',
      joiningDate: DateTime.now(),
    ),
    User(
      title: 'Abhinav Kumar',
      role: 'Frontend Developer',
      joiningDate: DateTime.now(),
    ),
    User(
      title: 'Sourav Raj',
      role: 'Tester',
      joiningDate: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _users.map((user) {
          return Container(
            margin: EdgeInsets.all(4.0),
            child: Card(
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.person),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            width: 4.0,
                            color: Colors.white,
                          ),
                          vertical: BorderSide(
                            width: 4.0,
                            color: Colors.white,
                          ),
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
                              user.title,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              user.role,
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              user.joiningDate.toString(),
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
        }).toList(),
      ),
    );
  }
}
