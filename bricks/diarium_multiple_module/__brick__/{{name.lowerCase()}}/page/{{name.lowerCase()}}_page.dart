import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:diarium/lib.dart';
import '../cubit/{{name.lowerCase()}}_cubit.dart';
import '../{{name.lowerCase()}}.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<{{name.pascalCase()}}Cubit>(create: (context) => {{name.pascalCase()}}Cubit()),
        BlocProvider<{{name.pascalCase()}}2Cubit>(create: (context) => {{name.pascalCase()}}2Cubit()),
      ],
      child: {{name.pascalCase()}}View(),
    );
  }
}