part of '{{name.lowerCase()}}_cubit.dart';

@immutable
abstract class {{name.pascalCase()}}2State {}

class {{name.pascalCase()}}2Initial extends {{name.pascalCase()}}2State {}

class OnLoadingGet{{name.pascalCase()}}2 extends {{name.pascalCase()}}2State {}

class OnErrorGet{{name.pascalCase()}}2 extends {{name.pascalCase()}}2State {
  final int? errorCode;
  final String? errorType;
  final String? errorMessage;

  OnErrorGet{{name.pascalCase()}}2({this.errorCode, this.errorType, this.errorMessage});
}

class OnSuccessGet{{name.pascalCase()}}2 extends {{name.pascalCase()}}2State {
  final {{name.pascalCase()}}2Model? data;

  OnSuccessGet{{name.pascalCase()}}2({required this.data});
}