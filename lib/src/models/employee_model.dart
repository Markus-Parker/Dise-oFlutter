import 'dart:convert';

List<Employee> employeeFromJson(String str) =>
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  int id;
  String nombre;
  String epoca;
  String habitat;
  String imagen;

  Employee({
    this.id,
    this.nombre,
    this.epoca,
    this.habitat,
    this.imagen,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        nombre: json["nombre"],
        epoca: json["epoca"],
        habitat: json["habitat"],
        imagen: json["imagen"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "epoca": epoca,
        "habitat": habitat,
        "imagen": imagen,
      };
}
