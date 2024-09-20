import 'package:flutter/material.dart';

class EmployeeDetailsPage extends StatelessWidget {
  final String name;
  final int age;
  final int salary;

  const EmployeeDetailsPage({
    Key? key,
    required this.name,
    required this.age,
    required this.salary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Details'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              age.toString(),
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              salary.toString(),
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}