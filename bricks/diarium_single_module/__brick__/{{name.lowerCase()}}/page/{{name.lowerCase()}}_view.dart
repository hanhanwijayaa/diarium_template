import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:diarium/lib.dart';
import '../cubit/{{name.lowerCase()}}_cubit.dart';
import '../{{name.lowerCase()}}.dart';

class {{name.pascalCase()}}View extends StatefulWidget {
  {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  _{{name.pascalCase()}}ViewState createState() => _{{name.pascalCase()}}ViewState();
}

class _{{name.pascalCase()}}ViewState extends State<{{name.pascalCase()}}View> {
  {{name.pascalCase()}}Cubit cubit = {{name.pascalCase()}}Cubit();

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
        body: BlocConsumer<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
          bloc: cubit,
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
          builder: (c, s) {
            return {{name.pascalCase()}}Widget();
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    cubit.get{{name.pascalCase()}}();
    super.initState();
  }
}
