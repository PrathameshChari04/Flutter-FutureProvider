class Employee{
  final int id;
  final String name;
  final String email;
  final String phone;

  Employee({
    this.name,
    this.email,
    this.phone,
    this.id
  });

  Employee.fromJson(Map<String, dynamic> parsedJson)
  : id = parsedJson['id'],
    name = parsedJson['name'],
    email = parsedJson['email'],
    phone = parsedJson['phone'];
}