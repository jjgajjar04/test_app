import 'package:test_app/models/user.dart';

class UserList {
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

  List<User> get getUserList => _users;

  void addUser(User newUser) {
    _users.add(newUser);
  }
}
