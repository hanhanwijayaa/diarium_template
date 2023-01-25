import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          onPressed: () {},
        ),
        body: BlocConsumer<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
          listener: (c, s) {
            if (s is OnSuccessGet{{name.pascalCase()}}) {
            } else if (s is OnErrorGet{{name.pascalCase()}}) {
              errorListener(
                  c: c,
                  s: s,
                  callBack: () {
                    c.read<{{name.pascalCase()}}Bloc>().get{{name.pascalCase()}}();
                  });
            }
          },
          builder: (c, s) {
            return {{name.pascalCase()}}Widget;
          },
        ),
      ),
    );
  }
}
