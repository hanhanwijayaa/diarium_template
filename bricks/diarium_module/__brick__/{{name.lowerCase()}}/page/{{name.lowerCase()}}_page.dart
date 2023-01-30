import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../lib.dart';
import '../cubit/{{name.lowerCase()}}_cubit.dart';
import '../{{name.lowerCase()}}.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<{{name.pascalCase()}}Cubit>(create: (context) => {{name.pascalCase()}}Cubit()..get{{name.pascalCase()}}()),
      ],
      child: {{name.pascalCase()}}View(),
    );
  }
}