import 'dart:convert';

{{name.pascalCase()}}2Model {{name.lowerCase()}}2ModelFromJson(String str) => {{name.pascalCase()}}2Model.fromJson(json.decode(str));

String {{name.lowerCase()}}2ModelToJson({{name.pascalCase()}}2Model data) => json.encode(data.toJson());

class {{name.pascalCase()}}2Model {
  {{name.pascalCase()}}2Model({
    required this.description,
  });

  String description;

  factory {{name.pascalCase()}}2Model.fromJson(Map<String, dynamic> json) => {{name.pascalCase()}}2Model(
      description: json["description"],
    );

  Map<String, dynamic> toJson() => {
      "description": description,
   };
}
