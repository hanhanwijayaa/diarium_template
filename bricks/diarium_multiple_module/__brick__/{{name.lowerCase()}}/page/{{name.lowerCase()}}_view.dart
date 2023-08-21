import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:diarium/lib.dart';
import '../cubit/{{name.lowerCase()}}_cubit.dart';
import '../cubit/{{name.lowerCase()}}2_cubit.dart';
import '../{{name.lowerCase()}}.dart';

class {{name.pascalCase()}}View extends StatefulWidget {
  {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  _{{name.pascalCase()}}ViewState createState() => _{{name.pascalCase()}}ViewState();
}

class _{{name.pascalCase()}}ViewState extends State<{{name.pascalCase()}}View> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBarWidget(
          title: "{{name.pascalCase()}}",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
              listener: (c, s) {
                if (s is OnSuccessGet{{name.pascalCase()}}) {
                } else if (s is OnErrorGet{{name.pascalCase()}}) {
                  errorListener(
                      c: c,
                      s: s,
                      callBack: () {
                        c.read<{{name.pascalCase()}}Cubit>().get{{name.pascalCase()}}();
                      });
                }
              },
            ),
            BlocListener<{{name.pascalCase()}}2Cubit, {{name.pascalCase()}}2State>(
              listener: (c, s) {
                if (s is OnSuccessGet{{name.pascalCase()}}2) {
                } else if (s is OnErrorGet{{name.pascalCase()}}2) {
                  errorListener(
                      c: c,
                      s: s,
                      callBack: () {
                        c.read<{{name.pascalCase()}}2Cubit>().get{{name.pascalCase()}}2();
                      });
                }
              },
            )
          ],
          child: Column(
            children: [
              BlocBuilder<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
                builder: (c, s) {
                  return {{name.pascalCase()}}Widget();
                },
              ),
              BlocBuilder<{{name.pascalCase()}}2Cubit, {{name.pascalCase()}}2State>(
                builder: (c, s) {
                  return {{name.pascalCase()}}2Widget();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
