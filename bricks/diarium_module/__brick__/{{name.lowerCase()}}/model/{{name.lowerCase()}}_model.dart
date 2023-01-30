import 'dart:convert';

{{name.pascalCase()}}Model {{name.lowerCase()}}ModelFromJson(String str) => {{name.pascalCase()}}Model.fromJson(json.decode(str));

String {{name.lowerCase()}}ModelToJson({{name.pascalCase()}}Model data) => json.encode(data.toJson());

class {{name.pascalCase()}}Model {
{{name.pascalCase()}}Model({
    required this.description,
  });

  String description;

  factory {{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => {{name.pascalCase()}}Model(
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "description": description,
  };
}
