import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<{{name.pascalCase()}}Bloc>(create: (context) => {{name.pascalCase()}}Bloc().get{{name.pascalCase()}}()),
      ],
      child: {{name.pascalCase()}}View(),
    );
  }
}