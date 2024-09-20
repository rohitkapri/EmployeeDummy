import 'package:flutter/material.dart';
import 'EmployeeDetailsPage.dart';

class EmployeeCard extends StatelessWidget {
  final String name;
  final int age;
  final int salary;

  const EmployeeCard(
      {required this.name, required this.age, required this.salary});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmployeeDetailsPage(
                name: name,
                age: age,
                salary: salary,
              ),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Colors.white),
            ),
          ),
          child: Column(
        
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 23,)),
              Text('$age', style: const TextStyle(fontSize: 23,)),
              Text(
                '${salary.toString()}',
                style: const TextStyle(fontSize: 23),
              ),
              SizedBox(height: 12)
            ],
          ),
        ),
      ),
    );
  }
}
