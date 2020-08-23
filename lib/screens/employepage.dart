import 'package:flutter/material.dart';
import 'package:flutter_provider/models/employee.dart';
import 'package:flutter_provider/services/employee_service.dart';
import 'package:provider/provider.dart';

class EmployePage extends StatelessWidget {
  final int id;
  final String name;
  final EmployeeService employeeService = EmployeeService();

  EmployePage({@required this.id,@required this.name});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: FutureProvider(create: (context) => employeeService.fetchEmployees(id),
      child: Center(child: Consumer<Employee>(
        builder: (context, employee,widget){
            return (employee != null) ? Text('Person Phone: ${employee.phone}')
            : CircularProgressIndicator();
        },
      ),),
      
    )
      
    );
  }
}