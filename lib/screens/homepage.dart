import 'package:flutter/material.dart';
import 'package:flutter_provider/models/employee.dart';
import 'package:flutter_provider/screens/employepage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Employee> employees = Provider.of<List<Employee>>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Person'),),
      body: (employees == null)
      ? Center(child: CircularProgressIndicator(),)
      : ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context,index){
          return ListTile(
            subtitle: Text(employees[index].email),
            title:  Text(employees[index].name),
            onTap: (){
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => EmployePage(id: employees[index].id, name: employees[index].name)));
               
            },
          );
        }
      )
      
    );
  }
}