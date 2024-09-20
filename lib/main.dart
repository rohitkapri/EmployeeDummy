import 'package:flutter/material.dart';
import 'services/api_service.dart';
import 'widgets/employee_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EmployeeDummy',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> employees = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchEmployeeData();
  }

  Future<void> fetchEmployeeData() async {
    final data = await ApiService.fetchEmployeeData();
    setState(() {
      employees = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EmployeeDummy")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return EmployeeCard(
            name: employee['name'],
            age: employee['age'],
            salary: employee['salary'],
          );
        },
      ),
    );
  }
}
