import 'package:flutter_provider/models/employee.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class EmployeeService{

  Future<List<Employee>> fetchEmployee() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/users");
    var jsonResponse = convert.jsonDecode(response.body) as List;
    return jsonResponse.map((employee) => Employee.fromJson(employee)).toList();
  }

  Future<Employee> fetchEmployees(int id) async {
    var response = await http.get("https://jsonplaceholder.typicode.com/users/$id");
    var jsonResponse = convert.jsonDecode(response.body);
    return Employee.fromJson(jsonResponse);
  }


}