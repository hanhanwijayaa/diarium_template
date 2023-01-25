import 'package:flutter/material.dart';

class {{name.pascalCase()}}Widget extends StatelessWidget {
  const {{name.pascalCase()}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("{{name.pascalCase()}}"));
  }
}
