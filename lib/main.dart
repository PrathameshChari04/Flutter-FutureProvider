import 'package:flutter/material.dart';
import 'package:flutter_provider/models/employee.dart';
import 'package:flutter_provider/screens/homepage.dart';
import 'package:flutter_provider/services/employee_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final EmployeeService employeeService = EmployeeService();
  

  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => employeeService.fetchEmployee(),
      catchError: (context,error){
        print(error.toString());
      },
      child: MaterialApp(
      title: 'Provider HTTP example',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
      ),
    );
  }
}

